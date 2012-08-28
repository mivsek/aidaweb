instance creation
collection: aCollection selected: aSelectedCollection
	"Multiple selection menu.Every element (text!) in aColection will be shown in menu. 
	Multiple selection will be put in aSelectedCollection. Here also initial selections can be set"
	^self new collection: aCollection selected: aSelectedCollection