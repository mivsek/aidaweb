private
allComposedViewMethods
	| methods |
	methods := self selectors asSet select: [:each | 'view*' match:each asString].
	methods := methods reject: [:each | 
		#(view viewAllowed: viewMethodForView: ) includes: each].
	^self superclass isWebApplication 
		ifTrue: [methods addAll: self superclass allComposedViewMethods; yourself]
		ifFalse: [methods]

"WebDemoApp new class allComposedViewMethods"