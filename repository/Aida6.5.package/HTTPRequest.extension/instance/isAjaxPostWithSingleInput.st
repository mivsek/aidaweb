*Aida
isAjaxPostWithSingleInput
	"Ajax post with of one form element only"
	(self isPost and: [self isAjaxRequest]) ifFalse: [^false].
	^(self postDataKeys includes: 'ajaxSingleField')
		or: [self isAjaxAutocompleteRequest | self isAjaxInPlaceEditingRequest]