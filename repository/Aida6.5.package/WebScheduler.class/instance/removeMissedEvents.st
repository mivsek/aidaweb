private
removeMissedEvents
	| now event |
	self critical:
		[self queue isEmpty ifTrue: [^nil].
		now := SpTimestamp now asSeconds.
		[now > self queue first timestamp asSeconds] whileTrue:
			[event := self queue first.
			self queue removeFirst.
			event isPeriodic ifTrue: [event reschedule].
			self queue isEmpty ifTrue: [^nil] ]
		]