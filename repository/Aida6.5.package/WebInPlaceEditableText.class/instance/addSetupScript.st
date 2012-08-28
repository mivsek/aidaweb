private
addSetupScript
	"Scriptaculous specific"
	| url urlFormated |
	url := self ajaxCallUrl, '?', (self ajaxCallUrlParametersFor: self context: self context), '&ajaxInPlaceEditing'.
	urlFormated := self isFormated ifTrue: [url, '&wikiFormated'] ifFalse: [url].
	self scriptAfter: 'new Ajax.InPlaceEditor(''', self id asString, 
		''', ''', urlFormated, ''', {', self rowsCols, self textOptions, self externalControl, 
		(self isFormated ifTrue: [',loadTextURL:''', url, ''''] ifFalse: ['']), '})'