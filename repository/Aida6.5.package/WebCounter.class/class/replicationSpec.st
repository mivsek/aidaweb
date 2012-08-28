odb specific
replicationSpec
	"Gemstone"
	^super replicationSpec, 
	 	#( 	(started max 2)
			(day replicate)
			(year replicate)
			(dailyCounts max 2)
			(hourlyCounts max 2)
			(total replicate)
			(yearlyHistory stub)	)