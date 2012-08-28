maintenance
adjustCSSLink: aString
	" '../images/arrow_left.gif' to '/img/arrowLeftGif.gif' "
	| in name extension |
	in := aString readStream.
	[in atEnd] whileFalse: [name := in upTo: $/]. "to find filename only"
	extension := name readStream upTo: $. ; upToEnd.
	name := self adjustImageName: name.
	^'/img/', name, '.', extension.