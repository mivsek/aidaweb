private
defaultViewBlock
	^[:object | 
		self aspect isNil ifTrue: [''] ifFalse: [self autoConvert: (object perform: self aspect) ] ]