codepage converting
convertToWeb: aString on: aSession
	"rconver internal unicode aString to a proper code page, defined in aSession"
	^self convert: aString toCodepage: aSession codePage