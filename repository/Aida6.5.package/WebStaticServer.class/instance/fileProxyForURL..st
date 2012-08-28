serving
fileProxyForURL: aString
	" Try to find a html file for a specified URL and make aHTMLFileProxy. 
	Returns nil if such a file does not exist. Index content in default WebIndex"
	| add home fname proxy |
	aString isEmpty ifTrue: [^nil].
	(aString last = $/) ifTrue: [add := 'index.htm'] ifFalse: [add := ''].
	home := self site homeDirectory.
	(home last = $/ ) | (home last = $\ ) ifTrue: [home := home copyFrom: 1 to: home size-1].
	fname := home, aString, add.
	SpEnvironment onWindows ifTrue: [fname := fname copyReplaceAll: '/' with: '\'].
	((SpFilename named: fname) exists and: [(SpFilename named: fname) isDirectory not]) ifFalse:
		[fname := fname, 'l'.   ".html instead just .htm"
		(SpFilename named: fname) exists ifFalse: [^nil] ].
	proxy := FileProxy from: fname onSite: self site.
	proxy indexContent.
	^proxy