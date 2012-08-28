private-css
allCssPrintMethods
	"WebStyle new allCssPrintMethods"
	| selectors methods |
	self addPrintSuperStyles 
		ifTrue: [selectors := self allWebStyleMethods] "From superclasses too"
		ifFalse: [selectors := self class selectors].
	methods := selectors select: [:each | 'cssPrint*' match:each asString].
	^SortedCollection withAll: methods sortBlock: [:a :b | a < b]