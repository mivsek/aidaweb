setup parameters
saveCallback
	"a JS script to execute when save button pressed or whole form submited"
	^self otherAt: #saveCallback ifAbsent: [nil]