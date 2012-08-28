accessing
objectOnDifferentPresentationUrl: aString
	"check if different representation (like .json or .xml) is requested and 
       returns its object by skipping the extension in URL"
	| url |
	url := aString asLowercase.
	url := ('*.json' match: url)
		ifTrue: [url copyReplaceAll: '.json' with: '']
		ifFalse: [	('*.xml' match: url)
			ifTrue: [url copyReplaceAll: '.xml' with: '']
			ifFalse: [url "later for more"] ].
	^self allUrlLinks at: url ifAbsent: [nil]