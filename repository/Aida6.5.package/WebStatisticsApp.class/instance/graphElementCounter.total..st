views-graphs
graphElementCounter: aFirstCounter total: aTotalCounter
	| e |
	e := WebElement new.
	e table width: self pageWidth.
	e cell valign: #top; add: (self monthlyStatsCounter: aFirstCounter total: aTotalCounter).
	e newCell addNbSp.
	e newCell valign: #top; add: (self hourlyStatsCounter: aFirstCounter total: aTotalCounter).
	^e