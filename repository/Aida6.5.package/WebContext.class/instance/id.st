accessing
id
	"unique identifier of the context inside the app instance"
	id isNil ifTrue: [self setId].
	^id