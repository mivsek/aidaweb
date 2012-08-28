settings
styleClass: aClassOrString
	"name of a class to provide a style support for this site. Default is WebStyle"
	| nme |
	nme := (aClassOrString isKindOf: String)
		ifTrue: [aClassOrString] ifFalse: [aClassOrString name asString].
	self settings  at: #styleClass put: nme.
	self style: nil.  "to initialize new style immediatelly, if possible"
	[self style] 
		on: Error do: [:ex | "nothing"]