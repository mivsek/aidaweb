private-obsolete
scriptForUpdate: anElementToUpdate from: anElementToRecreate with: anArgString optional: anArg2String  context: aContext
	"OBSOLETE"
	"ElementToUpdate will be replaced with contents of the elementToRecreate after its creation method will be   
      called to recreate it. Except for popups both elements are actually the same"
	"First argument will be send as an argument of the method while second is optional"
	"If both elements are nil, only arguments will be sent, usefull for sending commands only, like close window"
	"Note that parameters will be sent at the time of building the element and not at the event!" 
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdate:from: for more"
	"Prototype specific"
	| idToUpdate url parms  |
	idToUpdate := anElementToUpdate notNil 
		ifTrue: [self check: anElementToUpdate on: aContext. anElementToUpdate id]
		ifFalse: [#nothingToUpdate].  "just send arguments, if any"
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: anElementToUpdate context: aContext.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	anArg2String notNil ifTrue: [parms := parms, '&parm2=', anArg2String].
	anElementToRecreate notNil ifTrue:
		[self check: anElementToRecreate on: aContext.
		parms := parms, '&ajaxElementToRecreateId=', anElementToRecreate id asString].
	^'new Ajax.Updater(''', idToUpdate asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, ''', evalScripts: true, asynchronous: false})'