attributes
background: anImageOrURL
	"set the URL for the background image"
	self attributesAt: #background put:
		(anImageOrURL isString 
			ifTrue: [anImageOrURL]
			ifFalse: [self site urlResolver halfUrlFor: anImageOrURL]).