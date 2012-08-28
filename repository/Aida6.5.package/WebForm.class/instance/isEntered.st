validation
isEntered
	"check if all required fields (form elements) have values entered. Check also subforms"
	self allFields do: [:field | field isEntered ifFalse: [^false] ].  "local form fields"
	self subforms do: [:subform | subform isEntered ifFalse: [^false] ].
	^true