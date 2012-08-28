private
properAmpersand: aString
	" &amp; instead of mere & in XHTML! "
	| page |
	page := self webPage.
	(page isNil or: [page isXHTML]) ifFalse: [^aString].
	^aString copyReplaceAll: '&' with: '&amp;'