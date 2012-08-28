accessing
addText: aStringOrAssociation attributes: anArray
	"make a new element with aString. Attributes are same as previous text." 

	self add: (WebText text: aStringOrAssociation attributes: anArray)