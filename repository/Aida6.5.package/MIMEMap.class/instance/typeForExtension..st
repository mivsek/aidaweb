accessing
typeForExtension: aString
	| ext |
	ext := aString asLowercase copyWithout: $. .
	^self fileExtensions at: ext ifAbsent: [nil].

"MIMEMap new typeForExtension: 'jpg'"