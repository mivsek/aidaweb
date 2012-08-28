accessing
extensionForType: aString
	"only first one if more than one ext exist for this mime type"
	| exts string |
	string := aString = 'image/pjpeg' ifTrue: ['image/jpeg'] ifFalse: [aString]. "wierd IE problem"
	string := aString = 'image/x-png' ifTrue: ['image/png'] ifFalse: [string]. "wierd IE problem"
	exts := self mimeTypes at: string asLowercase ifAbsent: [#()].
	^exts notEmpty ifTrue: [exts first] ifFalse: [nil]

"MIMEMap new extensionForType: 'image/jpeg'"