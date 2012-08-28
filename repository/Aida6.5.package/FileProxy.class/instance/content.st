accessing
content
	content isNil ifTrue: 
		[(self aidaContentType ~= 'text/html') 
			ifTrue: [self refreshContent] 
			ifFalse: [self content: ''] ].
	^content