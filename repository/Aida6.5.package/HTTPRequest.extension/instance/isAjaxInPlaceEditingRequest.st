*Aida
isAjaxInPlaceEditingRequest
	"AJAX in place editor request, see WebInPlaceEditingText"
	self isAjaxRequest ifFalse: [^false].
	^self includesQuery: 'ajaxInPlaceEditing'