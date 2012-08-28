initialize-release
initialize
	"put yoursef in a router and remove all files from urlResolver, where are not needed anymore"
	self site router addStaticServerRoute.
	self site urlResolver removeObjectsOfClass: FileProxy.