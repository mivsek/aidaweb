addresses
mainAddress
	
	^self addresses 
		at: #MainAddress 
		ifAbsent: [self addresses at: #MainAddress put: Address new. self mainAddress].