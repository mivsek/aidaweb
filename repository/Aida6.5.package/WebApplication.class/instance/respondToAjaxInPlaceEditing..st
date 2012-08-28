private-obsolete
respondToAjaxInPlaceEditing: aRequest
	"field is immediatelly posted/saved! "
	| fieldValue field response |
	field := aRequest context elementId: aRequest ajaxElementId.
	field isFormated & aRequest isAjaxWikiFormatedRequest not  ifFalse:
		[fieldValue := (aRequest postDataAt: 'value') value.
		fieldValue := AIDASite convert: fieldValue fromCodepage: #utf8.
		field value: fieldValue.
		field save].
	response := field value.
	aRequest isAjaxWikiFormatedRequest ifTrue: [response := response asWikiHtml].
	response := AIDASite convert: response toCodepage: #utf8.
	^WebElement new add: (WebRawText text: response); yourself