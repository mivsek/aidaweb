converting
asJSON
	| dict |
	dict := Dictionary new. "will become a JS object on client side"
	self command notNil ifTrue: [dict at: 'command' put: self command asString].
	self context notNil ifTrue: [dict at: 'context' put: self context].
	self element notNil ifTrue: [dict at: 'id' put: self element id].
	self value notNil ifTrue: [dict at: 'value' put: self value].
	self other notNil ifTrue:
		[self at: 'other' put: self other]. "should be with string/number/boolean/nil values ony"
	^WebJSON stringify: dict