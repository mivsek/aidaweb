private-classes-changes
checkOrCreateMethod: aTranslMethodSymbol onClass: aClassWithTransl
	"check if exist and if not, create that method with translations (empty so far)  on a class side of class"
	(aClassWithTransl respondsTo: aTranslMethodSymbol) ifTrue: [^true].
	self writeBackPairs: #() intoMethod: aTranslMethodSymbol onClass: aClassWithTransl