accessing
objectOnUrl: aString
	" finds a reference to an object, specified by that URL string. If not yet known, try to 
	find it as a html file. if not found, search method resources in current WebStyle too.."
	"If still not found, check if different representation (like .json or .xml) is requested"
	| object |
	^self allUrlLinks at: aString asLowercase ifAbsent: 
		["object := self fileProxyForURL: aString." "moved to router and staticServer"
		self site staticServer. "just to create it od not yet = lazy migration"
		object := self methodImageForUrl: aString.
		object notNil ifTrue: [^self addObject: object withUrl: aString].
		object := self objectOnDifferentPresentationUrl: aString. "like .json or .xml"
		^object]. "or nil"

"URLResolver default objectOnURL: '/osn/g_l-vse.htm' "