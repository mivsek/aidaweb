codepage converting
convertFromWeb: aString on: aSession
	"convert aString, which is in code page, defined in aSession to an internal unicode "
	^self convert: aString fromCodepage: aSession codePage