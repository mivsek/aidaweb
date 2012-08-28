referers
removeReferersJustOneHit
	"..and older that 7 days"
	self allReferersJustOneHit do: [:each | self referers removeKey: each]
	
"WebStatistics default removeReferersJustOneHit"