private-events
acceptInputFromValue: aBooleanOrString
	"true/false comes from WebEvent, 'on' or '' from form post"
	(aBooleanOrString = true or: [aBooleanOrString = 'on'])
		ifTrue: [self checkValue]
		ifFalse: [self uncheckValue]