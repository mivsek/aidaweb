*Aida
view
	| view |
	view := self queryAt: 'view' ifAbsent: [nil].
	view notNil ifTrue: [^(view readStream upTo: $# )  asSymbol]. "skip #anchor if any"
	^self isPost 
		ifTrue: [(self postDataAt: 'view' ifAbsent: [^#main]) value asSymbol]
		ifFalse: [#main]