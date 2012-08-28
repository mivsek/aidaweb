private-obsolete
onMouseOverSyncUpdate: anElement with: anArgString
	"update a specified element from server (AJAX) wtih calling an element method with an argument"
	"wait until AJAX response returns (synchronous update)"
	"Prototype specific"
	| id url parms  |
	anElement ensureId. id := anElement id.
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: anElement context: self context.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	self onMouseOver: 'new Ajax.Updater(''', id asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, ''', evalScripts: true, asynchronous: false})'