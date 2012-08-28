odb specific
replicationSpec
	"Gemstone"

	^super replicationSpec, 
		#(	(firstName replicate)
			(lastName replicate)
			(company replicate)
			(street replicate)
			(city replicate)
			(postalCode replicate)
			(country replicate)
			(phones max 4)
			(emails max 4)
		 )