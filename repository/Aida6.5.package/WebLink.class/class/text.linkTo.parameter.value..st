instance creation
text: aString linkTo: aLink parameter: aParmString value: aValueString
	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver. Add also one  parameter in query part of an URL"
	| webLink |
	webLink := self text: aString linkTo: aLink.
	webLink parameter: aParmString value: aValueString.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"