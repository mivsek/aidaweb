column mappings
colAspectsWithout: anArrayOfAspects
	"for auto columns in search results"
	^self colAspects select: [:each | (anArrayOfAspects includes: each) not]