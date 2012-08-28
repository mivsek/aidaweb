private
stopServices
	self systemServices values do: [:service | (service class canUnderstand: #stop) ifTrue: [service stop] ].
	self userServices values do: [:service | (service class canUnderstand: #stop) ifTrue: [service stop] ].