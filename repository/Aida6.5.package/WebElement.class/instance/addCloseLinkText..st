adding links
addCloseLinkText: aString
	"a link to close that window if popup (it also closes its execution context!)"
	^(self addNilLinkText: aString)
		onClickClose