printing
linkToWikiPage: aTitleString text: aString
	| page titleString |
	titleString := aTitleString "AIDASite convertFromWeb: aTitleString on: self app session".
	page := self app observee parent pageTitled: titleString.
	page notNil ifTrue: [^WebLink text: aString linkTo: page ].
	^(WebLink text: aString linkTo: self app observee parent view: #add )  "new page"
		parameter: 'title' value: (AIDASite convertToWebString: aTitleString)