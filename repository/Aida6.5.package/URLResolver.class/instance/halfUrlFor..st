accessing
halfUrlFor: anObject
	"finds or composes an URL reference to that object . If the URL is new one, then it is written to both dictionaries for later lookup. If resolution is unsuccessfull then returns nil. If anObject dont have an url yet, url part for them is automatically generated, for example:  /objecto1638948.html"
	| newUrl urls |
	urls := (self allWebPages at: anObject ifAbsent: [
	      newUrl := ((anObject isKindOf: WebPage)  and: [anObject title notNil] )
			ifTrue: ['/', anObject title asLowercase,'.html']			
			ifFalse: [self autoUrlFor: anObject].
		self addObject: anObject withUrl: newUrl.
		OrderedCollection with: newUrl]).
	"just in case object has an empty collection of urls"
	(urls isNil or: [urls isEmpty]) ifTrue: 
		[self removeObject: anObject. ^self halfUrlFor: anObject].
	^urls at: 1.