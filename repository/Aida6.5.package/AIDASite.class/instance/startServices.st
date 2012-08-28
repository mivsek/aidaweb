private
startServices
	self systemServices values do: [:service | (service class canUnderstand: #start) ifTrue: [service start] ].
	self userServices values do: [:service | (service class canUnderstand: #start) ifTrue: [service start] ].