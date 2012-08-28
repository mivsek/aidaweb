referers
allReferersJustOneHit
	"return a collection of all referers with just one hit and older that one week"
	| collection secBefore7days |
	secBefore7days := SpTimestamp now asSeconds - (7 * 3600 * 24).
	collection := OrderedCollection new.
	self referers keysAndValuesDo: [:referer :counter |
		(counter total = 1 and: [secBefore7days >= counter started asSeconds ]) ifTrue:
			[collection add: referer] ].
	^collection

"WebStatistics default allReferersJustOneHit size"