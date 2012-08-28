accessing
addPage: aNameString description: aTabNameString
	"aNameString is original/first title of page, not changed one!"
	| name pageTitle |
	name := aNameString convertToSloveneChars.
	(self pages contains: [:each | each key == name]) ifTrue: [^nil]. 
	pageTitle := (self app observee parent pageTitled: name).
	pageTitle := pageTitle notNil ifTrue: [pageTitle title] ifFalse: [''].
	self pages add:
		(Association key: name value: (Array with: aTabNameString with: pageTitle ))