private-building
ajaxUpdateWith: aParmString
	| parm |
"	(aParmString isNil and: [self aspect isNil]) ifTrue:
		[self error: 'This WebGrid not updatable, set collection with collectionAspect:for: instead!'].
"	(aParmString notNil and: ['sort-*' match: aParmString]) ifTrue: 
		[parm := aParmString readStream upTo: $-; upToEnd.
		(self columnWithId: parm asInteger) sort. "or toogle sort order"
		self page: 1]. "always back to first page after sort change"
	(aParmString notNil and: ['page-*' match: aParmString]) ifTrue: 
		[parm := aParmString readStream upTo: $-; upToEnd.
		self page: parm asInteger]. 
	^self  "actuall update happens in second, streaming phase"