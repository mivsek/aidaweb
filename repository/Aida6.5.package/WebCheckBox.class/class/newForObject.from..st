instance creation
newForObject: anObject from: aCollection
	"if checked, this object will be put in collection. If object is initially in collection, 
	checkbox will be checked"
	"Usefull for easy selection among many objects"
	^self new object: anObject from: aCollection