adding-removing
addObject: anObject withUrl: aString
	"add an object if not already exist and add url to the collection of urls for that object.
	If aString url point to some other object already, then remove url from that other object"
	"warning, if web elements (such as web apps) will be registered"
"	self isWebElement: anObject." "do we still need this warning?"
	anObject isNil ifTrue: [^nil]. "do not add nil objects!"
	self site critical: 
		[(self allWebPages at: anObject ifAbsentPut: [OrderedCollection new])
				add: aString asLowercase.
		(self allUrlLinks includesKey: aString asLowercase) ifTrue:
			[(self allWebPages at: (self allUrlLinks at: aString asLowercase)	
				ifAbsentPut: [OrderedCollection new])
					remove: aString asLowercase ifAbsent: [] ].
		self allUrlLinks at: aString asLowercase put: anObject ].
	^anObject