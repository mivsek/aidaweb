searching
addFreshnessRelevance: aDictionary
	"objects with newer modified date are more relevant"
	| weight |
	aDictionary keysDo: [:object |
		(object class selectors includes: #modified) ifTrue:
			[weight := 1000 - (Date today subtractDate: object modified) max: 0.
			aDictionary at: object put:  (aDictionary at: object) + weight] ]