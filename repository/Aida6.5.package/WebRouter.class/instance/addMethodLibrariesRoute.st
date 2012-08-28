adding-removing
addMethodLibrariesRoute
	"AIDASite allInstances do: [:each | each router addMethodLibrariesRoute] "
	"WebStyles holds method resources like JS, CSS, etc, while method images are dealed in URLResolver"
	(self routes contains: [:route | route value == WebMethodLibrary]) "only one lib route!"
		ifTrue: [^nil].
	self addRoutePattern: '/*' handler: WebMethodLibrary "class directly, it will route further by itself"