private-streaming
streamAttributesTo: aStream for: aSession
	"start and end of tag is not my responsibility!"
	self attributes isNil ifTrue: [^self].
	self attributes keysAndValuesDo: [:name :value |
		self streamAttribute: name value: value to: aStream for: aSession]