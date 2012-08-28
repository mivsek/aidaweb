statistics
runningHistory
	"return a collection of server runs as array of:
		started timestamp,
		last alive = stopped (more or less) timestamp,
		uptime in seconds,
		downtime from previous run in seconds,
		crashed or not.
	Used to determine history 
	of server runnings and to calculate server avaiability. Last entry in collection is current run
	with last alive no more than minute before current time"
	"AIDASite default runningHistory"
	| collection newArray  arry |
	collection := OrderedCollection new.
	self runningHistoryCollection do: [:array |
		newArray := Array new: 5.
		newArray 
			at: 1 put: (SpTimestamp fromSeconds: (array at: 1));
			at: 2 put: (SpTimestamp fromSeconds: (array at: 2));
			at: 3 put: (((array at: 2) - (array at: 1)) max: 0);
			at: 4 put: 0;  "we will calculate later"
			at: 5 put: ((array size < 3) ifTrue: [true] ifFalse: [array at:3]).
		collection add: newArray copy].
	newArray := Array new: 5.
	newArray
		at: 1 put: self startedTimestamp;
		at: 2 put: self lastTimeAliveTimestamp;
		at: 3 put: (self lastTimeAliveTimestamp asSeconds - 
			self startedTimestamp asSeconds);
		at: 4 put: 0;  "we will calculate later"
		at: 5 put: false. "current run not crashed"
	collection add: newArray copy.
	2 to: collection size do: [:inx |
		arry := collection at: inx.
		arry at: 4 put:   "this started - previous last alived"
			((arry at: 1) asSeconds - ((collection at: inx-1) at: 2) asSeconds)
		].
	^collection