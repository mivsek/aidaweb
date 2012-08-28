private
lastPreSnapshot
	"a timestamp of last pre snapshoot activity"
	LastPreSnapshot isNil ifTrue: [LastPreSnapshot := 
		(SpTimestamp fromSeconds: SpTimestamp now asSeconds - (24*3600))]. "something older than 5min!"
	^LastPreSnapshot