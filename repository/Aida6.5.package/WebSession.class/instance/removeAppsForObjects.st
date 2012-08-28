releasing state
removeAppsForObjects
	self appsForObjects keysAndValuesDo: [:object :dict |
		(dict includesKey: #web) ifTrue: [(dict at: #web) removeYourself] ].
	self initAppsForObjects