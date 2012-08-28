accessing
allFields
	"return all fields (form elements) in this form"
	^self fields values asSet
		remove: self fieldSet ifAbsent: [];
		remove: self streamedFieldSet ifAbsent: [];
		yourself
