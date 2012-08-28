*Aida
ajaxSingleInputName
	"Single form field Ajax posts have additional parameter carying the name of that field"
	"except for autocomplete and inplace editing fields, where a first and only field is returned"
	| pdata |
	pdata := self postDataAt: 'ajaxSingleField' ifAbsent: [nil].
	pdata notNil ifTrue: [^pdata value].
	(self isAjaxAutocompleteRequest | self isAjaxInPlaceEditingRequest) ifTrue: 
		[^self postDataKeys detect: [:each | 'field*' match: each] ifNone: nil].
	^nil