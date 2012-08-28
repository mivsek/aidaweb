scripts
scriptAfterExternal: anUrlOrObject
	"add this externalJavaScript  to scripts executed after this element"
	| url |
	url := anUrlOrObject isString
		ifTrue: [anUrlOrObject]
		ifFalse: [self site urlResolver halfUrlFor: anUrlOrObject].
	(self otherAt: #scriptAfter ifAbsentPut: [WebScript new]) source: url