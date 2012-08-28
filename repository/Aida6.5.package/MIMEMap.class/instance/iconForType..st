accessing
iconForType: aString
	"a name of icon to represent this content type, from WebStyle imgs-filetype icons"
	aString isNil ifTrue: [^#unknownSmallPng].
	'text/plain' = aString ifTrue: [^#txtSmallPng].
	'text/xml' = aString ifTrue: [^#xmlSmallPng].
	'application/pdf' = aString ifTrue: [^#pdfSmallPng].
	'application/msword' = aString ifTrue: [^#wordSmallPng].
	'application/rtf' = aString ifTrue: [^#wordSmallPng].
	'application/excel' = aString ifTrue: [^#excelSmallPng]. "depreceated!"
	'application/vnd.ms-excel' = aString ifTrue: [^#excelSmallPng].
	'application/powerpoint' = aString ifTrue: [^#powerpointSmallPng].   "depreceated!"
	'application/vnd.ms-powerpoint' = aString ifTrue: [^#powerpointSmallPng].
	'application/zip' = aString ifTrue: [^#zipSmallPng].
	('image/*' match: aString) ifTrue: [^#imageSmallPng].
	('audio/*' match: aString) ifTrue: [^#multimediaSmallPng].
	('video/*' match: aString) ifTrue: [^#multimediaSmallPng].
	^#unknownSmallPng

"MIMEMap new iconForType: 'image/jpeg'"