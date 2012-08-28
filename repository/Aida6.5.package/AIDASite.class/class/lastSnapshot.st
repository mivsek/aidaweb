private
lastSnapshot
	"a timestamp of last image snapshot"
	LastSnapshot isNil ifTrue: [LastSnapshot := 
		(SpTimestamp fromSeconds: SpTimestamp now asSeconds - (24*3600))]. "something older than 5min!"
	^LastSnapshot