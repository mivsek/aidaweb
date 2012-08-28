validation
isValid
	"check if all fields (form elements) have valid values. Check also subforms"
	self allFields do: [:field | field isValid ifFalse: [^false] ].  "local form fields"
	self subforms do: [:subform | subform isValid ifFalse: [^false] ].
	^true