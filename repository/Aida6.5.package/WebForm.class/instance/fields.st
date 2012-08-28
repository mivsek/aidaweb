private-fields
fields
	"return a dictionary of all fields in this form. a field name is used as a key"
	fields isNil ifTrue: [self initFields].
	^fields