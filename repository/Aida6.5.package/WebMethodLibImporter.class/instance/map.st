private
map
	"Url to method map. Dictionary with Url as key, method name as value"
	map ifNil: [self initMap].
	^map