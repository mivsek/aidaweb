scripts
scriptBeforeExternal: anUrlOrObject
	"add this external JavaScript  to scripts executed before this element"
	| url |
	url := anUrlOrObject isString
		ifTrue: [anUrlOrObject]
		ifFalse: [self site urlResolver halfUrlFor: anUrlOrObject].
	(self otherAt: #scriptBefore ifAbsentPut: [WebScript new]) source: url