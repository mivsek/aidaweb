initialize-release
setRandomIds
	self id: (Random new next * 1000000000) asInteger.
	self secureId: (Random new next * 1000000000) asInteger.