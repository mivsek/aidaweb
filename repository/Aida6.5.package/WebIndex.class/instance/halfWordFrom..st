private
halfWordFrom: aString
	"prepare first three letters, lowercase (also slovene chars)"
	^AIDASite sloveneLowercase: (aString copyFrom: 1 to: 3).