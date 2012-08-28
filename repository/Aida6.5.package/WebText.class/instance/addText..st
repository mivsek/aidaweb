accessing
addText: aStringOrAssociation
	"make a new element with aString. Attributes are same as previous text." 

	self add: (WebText text: aStringOrAssociation attributes: self attributes)