private-streaming
addSetupScriptOn: aStream choicesElement: aChoicesElement
	"Scriptaculous specific"
	| contextParm url afterUpdateElement updateUrl parms |
	contextParm := WebContext contextIdName "aidaCtx", '=', self app context id printString.
	url := self ajaxCallUrlExtended, '&ajaxAutocompleteField&', contextParm.
	afterUpdateElement := self elementToUpdate isNil 
		ifTrue: [''] 
		ifFalse:
			[self elementToUpdate ensureId. 
			updateUrl := self ajaxCallUrl. 
			parms := self ajaxCallUrlParametersFor: self elementToUpdate context: self app context. "is this needed"
 			parms := parms, '&ajaxElementToRecreateId=', self elementToUpdate id asString.
			'afterUpdateElement: function(element, selectedElement){var field = Form.Element.serialize(''',
			self id asString, '''); var name = $(''',
			self id asString, ''').name; new Ajax.Updater(''', self elementToUpdate id asString, ''', ''', updateUrl, 
			''', {method: ''post'', postBody: field + ''', ('&', parms), 
			'&ajaxSingleField='' + name, evalScripts: true})} '].

	aStream nextPutAll: '<script type="text/javascript">new Ajax.Autocompleter(''', 
		self id asString, ''', ''', aChoicesElement id asString, ''', ''', url, 
		''', {', afterUpdateElement, '});</script>', self eol.