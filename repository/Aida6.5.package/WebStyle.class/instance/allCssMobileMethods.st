private-css
allCssMobileMethods
	"WebStyle new allCssMobileMethods"
	| selectors methods |
	self addMobileSuperStyles 
		ifTrue: [selectors := self allWebStyleMethods] "From superclasses too"
		ifFalse: [selectors := self class selectors]. 
	methods := selectors select: [:each | 'cssMobile*' match:each asString].
	^SortedCollection withAll: methods sortBlock: [:a :b | a < b]