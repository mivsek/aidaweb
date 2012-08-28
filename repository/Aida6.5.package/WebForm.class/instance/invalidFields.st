accessing
invalidFields
	"all fields whith a not valid value, including from subforms"
	^self allFieldsIncludingSubforms reject: [:each | each isValid]