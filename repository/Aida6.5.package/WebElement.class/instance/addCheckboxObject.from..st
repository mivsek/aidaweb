adding form elements
addCheckboxObject: anObject from: aCollection
	"if checked, this object will be put in collection. If object is initially in collection, 
	checkbox will be checked. Usefull for easy selection among many objects"
	^self add: (WebCheckBox newForObject: anObject from: aCollection)