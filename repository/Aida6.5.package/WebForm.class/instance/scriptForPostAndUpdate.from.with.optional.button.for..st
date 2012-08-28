private-ajax
scriptForPostAndUpdate: anElementToUpdate from: anElementToRecreate with: anArgString  optional: anArg2String button: aWebButton for: aContext
	"Whole form post! Form from page, popup window or standalone widget"
	"Sychronous Ajax call, it blocks until call is finished!"
	"ElementToUpdate will be replaced with contents of the elementToRecreate after its creation method will be   
      called to recreate it. Except for popups both elements are actually the same"
	"First argument will be send as an argument of the method while second is optional"
	"If both elements are nil, only arguments will be sent, usefull for sending commands only, like close window"
	"See WebApplication>>respondToAjaxRequest: for more"
	"Prototype specific"
	| url id parms buttonName buttonValue |
	id := anElementToUpdate notNil ifTrue: [anElementToUpdate ensureId; id] ifFalse: [#nil].
	url := self ajaxCallUrl. 
	parms := self ajaxCallUrlParametersFor: anElementToUpdate context: aContext.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	anArg2String notNil ifTrue: [parms := parms, '&parm2=', anArg2String].
	anElementToRecreate notNil ifTrue: 
		[parms := parms, '&ajaxContentElementId=', 
			[anElementToRecreate registerId. anElementToRecreate id asString] value ].
	aWebButton notNil ifTrue: 
		[buttonName := aWebButton name.  "Form.Serialize somehow doesn't add that button, so we add it manually"
		buttonValue := aWebButton text].
	^'var serializedForm = Form.serialize(''', (self form registerId "if not yet"; id) asString, "page or widget form"
        '''); new Ajax.Updater(''', id asString, 
        ''', ''', "url, ''', {method: ''get'', parameters: ''', parms, ''' + form, evalScripts: true, asynchronous: false})'" url, 
        ''', {method: ''post'', postBody: serializedForm + ''', ('&', parms),  
	(aWebButton notNil ifTrue: ['&', buttonName, '=', buttonValue, '&ajaxPressedButton=', buttonName, ''] ifFalse: ['']), 
	''', evalScripts: true, asynchronous: false})'