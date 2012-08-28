private
startLoop
	"to check every second if some event is to be run"
	self isLoopRunning ifTrue: [self stopLoop].
	self loop: 
		([ [true] whileTrue: 
			[| event now |
			self critical: 
				[self queue notEmpty ifTrue:
					[event := self queue first. now := SpTimestamp now asSeconds.
				 	now = event timestamp asSeconds
						ifTrue:  [event run]  "and reschedule if periodic event"
						ifFalse: [now > event timestamp asSeconds  ifTrue: [self removeMissedEvents]].
					[self queue notEmpty and: [now = self queue first timestamp asSeconds]]  "run all events on the same time"
						whileTrue: [self queue first run]
				 ]].
			(Delay forSeconds: 1) wait]   "check every second"
		] forkAt: self schedulerPriority)