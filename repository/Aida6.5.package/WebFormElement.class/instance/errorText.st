private
errorText
	"this text will be shown in errorElement in cas of validation failure"
	^self otherAt: #ErrorText ifAbsent: ['']