accessing
extensionsForType: aString
	^self mimeTypes at: aString asLowercase ifAbsent: [#()].

"MIMEMap new extensionsForType: 'image/jpeg'"