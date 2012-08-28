model adapting
acceptInputFromValues: aCollection
	| option result values |
	self selected isNil ifTrue: [self selected: OrderedCollection new]. "we need a collection! "
	self selected copy do: [:each | self selected remove: each].
	values := aCollection collect: [:each | AIDASite convert: each fromCodepage: #'UTF-8'].
	self selected addAll: 
		(self collection select:  [:each |
			option := self aspect isNil ifTrue: [each] ifFalse: [each perform: self aspect].
			option := option trimBlanks. "it should also eliminate more than one spaces together!"
			values contains: [:value | value match: option] ] ).
	self aspectToStore notNil ifTrue: 
		[result := self selected notEmpty ifTrue: [self selected asOrderedCollection first] ifFalse: [nil].
		self adaptorToStore value: result]