model posting
uncheckAllProperChecboxesFor: anEventOrRequest
	"for single input event just that checbox, if any"
	| toUncheck |
	toUncheck := self allFieldsIncludingSubforms. "by default, for classical form submits"
	(anEventOrRequest isWebEvent  "probably check/uncheck event over  WebSocket "
		and: [anEventOrRequest element class == WebCheckBox]) 
			ifTrue: [toUncheck := Array with: anEventOrRequest element].
	anEventOrRequest isAjaxRequest ifTrue: 
		[toUncheck := Array with: 
			(self fields at: anEventOrRequest ajaxSingleInputName ifAbsent: [^nil])].
	toUncheck do: [:each | each isCheckBox ifTrue: [each uncheckValue] ]