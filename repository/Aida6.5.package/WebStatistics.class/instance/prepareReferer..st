private-referers
prepareReferer: anUrlString

	"ingnore all parameters in url"

	^(anUrlString copyUpTo: $?)