instance creation
newFor: aString
	"prepare a CAPTCHA image for that string"
	^self new 
		text: aString