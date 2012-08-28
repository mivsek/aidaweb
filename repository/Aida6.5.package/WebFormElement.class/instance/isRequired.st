validation
isRequired
	"this input field is required and must not stay empty"
	^self otherAt: #name ifAbsent: [false]