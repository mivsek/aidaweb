adding-removing
defaultUrl: aString for: anObject
	"set url as default url for that object. This url is then used in dynamic url creation. If an object 
	does not already exist, then create a new entry first"
	| urls first defInx |
	self addObject: anObject withUrl: aString.  "just in case object is new one"
	"swap old default with new default url on a first place in collection"
	self site critical: 
		[urls := allWebPages at: anObject.
		first := urls first.
		defInx := urls indexOf: aString asLowercase.
		urls at: 1 put: (urls at: defInx).
		urls at: defInx put: first].