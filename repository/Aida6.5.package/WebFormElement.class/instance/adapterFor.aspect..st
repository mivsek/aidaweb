model adapting
adapterFor: anObject aspect: anAspectSymbolOrNumber
	"return an appropriate aspect adaptor for that element"
	((anObject isKindOf: Collection) or: [anObject isKindOf: WebTranslDict]) ifTrue:  
		"adapt to an element of collection, which must be an indexed one! "
		[^(AidaModelAdaptor forIndex: anAspectSymbolOrNumber) subject: anObject].
	(anAspectSymbolOrNumber isKindOf: Symbol) ifTrue:
		[^(AidaModelAdaptor forAspect: anAspectSymbolOrNumber) subject: anObject].
	self error: 'innapropriate aspect'