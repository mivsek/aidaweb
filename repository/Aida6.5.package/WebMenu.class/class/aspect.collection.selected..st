instance creation
aspect: aSymbol collection: aCollection selected: aSelectedCollection
	"Multiple selection menu. Aspect of every element in aColection will be shown in menu. 
	Multiple selections will be put in aSelectedCollection. Here also initial selections can be set"
	^self new aspect: aSymbol collection: aCollection selected: aSelectedCollection