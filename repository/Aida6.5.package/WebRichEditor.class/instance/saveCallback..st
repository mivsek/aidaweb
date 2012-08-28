setup parameters
saveCallback: aString
	"a JS script to execute when save button pressed or whole form submited"
	^self otherAt: #saveCallback put: aString