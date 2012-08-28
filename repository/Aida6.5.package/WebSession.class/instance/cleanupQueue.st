private-serving
cleanupQueue
	"remove stalled commands like those on inactive apps or views"
	self queue copy do: [:cmd |
		( (#(#update) includes: cmd command) and:
			[cmd app isNil or: 
				[cmd app isActive not or: [(cmd app isActiveView: cmd view) not]]])
					ifTrue: [self queue remove: cmd] ].
	self queue size > 1000 ifTrue: "something is wrong!"
		[Transcript cr; show: '*** Queue too long, reinitializing on ', self user username.
		self initQueue]