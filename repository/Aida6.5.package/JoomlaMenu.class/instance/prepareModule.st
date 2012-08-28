printing
prepareModule
	| inx tabTitle |
	super prepareModule.
	inx := 1.
	self pages do: [:each | 
		tabTitle := each key ensureUnicodeSloveneChars.
		self cell add: 
			((self linkToWikiPage: each key text: each value first) class: #mainlevel).
		each ~= self pages last ifTrue: [self newRow]. 
		inx := inx + 1]