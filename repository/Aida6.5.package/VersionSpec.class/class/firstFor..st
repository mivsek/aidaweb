instance creation
firstFor: anObject
	"for a first version of an object"
	^super new
		object: anObject;
		setDefaultNumber;
		setCurrent