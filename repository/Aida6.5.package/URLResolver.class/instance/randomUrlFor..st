private
randomUrlFor: anObject
	| number ext url |
	number := (self site class random next * 10000000) asInteger.
	ext := self site mimeMap extensionForType: anObject aidaContentType.
	ext isNil ifTrue: [ext := 'html'].
	url := '/object/o', number printString, '.', ext.
	^(self objectOnUrl: url) isNil  "avoid duplicates!"
		ifTrue: [url]
		ifFalse: [self randomUrlFor: anObject]