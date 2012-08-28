accessing
linkTo: aLink
	"set hypertext link to some other object or page. If argumet is a String, then this is an url reference, 	else this is object reference, which is resolved to url with help of URLResolver"
	"to add anchor: #(object anchor) ! "
	(aLink isKindOf: String ) ifTrue: [self urlReference: aLink. ^self].
	(aLink isKindOf: Array)
		ifTrue: [self ooReference: (aLink at: 1). self anchor: (aLink at: 2)]
		ifFalse: [self ooReference: aLink].