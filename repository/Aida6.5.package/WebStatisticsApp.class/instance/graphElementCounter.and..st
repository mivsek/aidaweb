views-graphs
graphElementCounter: aFirstCounter and: aSecondCounter
	| e |
	e := WebElement new. e table width: self pageWidth.
	(self session lastRequest includesQuery: 'yearly') 
		ifTrue: [e cell valign: #top; add: (self yearlyStatsCounter: aFirstCounter and: aSecondCounter)]
		ifFalse: 
			[e cell valign: #top; add: (self monthlyStatsCounter: aFirstCounter and: aSecondCounter).
			e newCell addNbSp.
			e newCell valign: #top; add: (self hourlyStatsCounter: aFirstCounter and: aSecondCounter)].
	^e