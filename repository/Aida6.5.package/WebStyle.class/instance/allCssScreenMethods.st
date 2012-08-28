private-css
allCssScreenMethods
	"for screen styles, all css* except cssPrint* , sorted alphabeticaly"
	"WebStyle new allCssScreenMethods"
	| selectors methods print mobile |
	self addSuperStyles 
		ifTrue: [selectors := self allWebStyleMethods] "From superclasses too"
		ifFalse: [selectors := self class selectors].
	methods := selectors select: [:each | 'css*' match:each asString].
	print := self allCssPrintMethods asSet.
	mobile := self allCssMobileMethods asSet.
	^SortedCollection 
		withAll: (methods reject: [:each | (print includes: each) or: [mobile includes: each] ])
		sortBlock: [:a :b | a < b]