instance creation
text: aString attributes: anArray linkTo: aLink

	"set hypertext link and text to some other object or page. If argumet is a String, then this is an url reference, else this is object reference, which is resolved to url with help of URLResolver"
	| webLink |
	webLink := self linkTo: aLink.
	webLink text: aString attributes: anArray.
	^webLink

"WebLink text: 'text' linkTo: 'http://www.tris-a.si'"
"WebLink text: 'text' linkTo: Smalltalk"