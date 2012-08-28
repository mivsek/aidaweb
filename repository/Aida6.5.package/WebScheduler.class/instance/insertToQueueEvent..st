private
insertToQueueEvent: aScheduledEvent
	self critical:
		[self queue isEmpty ifTrue: [^self queue add: aScheduledEvent].
		aScheduledEvent timestamp >= self queue last timestamp
			ifTrue: [^self queue add: aScheduledEvent].
		aScheduledEvent timestamp < self queue first timestamp 
			ifTrue: [^self queue addFirst: aScheduledEvent].
		self queue size to: 1 by: -1 do: [:inx |
			aScheduledEvent timestamp >= (queue at: inx) timestamp ifTrue: 
				[^self queue add: aScheduledEvent beforeIndex: inx+1] ].
		self error: 'rescheduling error!'.  "in case any of above conditions don't satisfy"
		]