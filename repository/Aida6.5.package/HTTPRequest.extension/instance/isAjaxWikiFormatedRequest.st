*Aida
isAjaxWikiFormatedRequest
	"AJAX in place editor request, see WebInPlaceEditingText"
	self isAjaxRequest ifFalse: [^false].
	^self includesQuery: 'wikiFormated'