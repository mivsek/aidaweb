private-obsolete
updateEverySeconds: aNumber with: anArgString
	"OBSOLETE, use Comet techniques instead!"
	"periodically update itself from server (AJAX) with calling an element method with an argument"
	"Prototype specific"
	| url parms  |
	self ensureId. self id.
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: self context: self context.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	parms := parms, '&ajaxElementToRecreateId=', self id asString.
	self scriptAfter: '
		function createRequest() {
			new Ajax.Request(''', url, ''', { method: ''post'', postBody: ''', parms, ''',
				onSuccess: function(transport) {
					document.getElementById(''', self id, ''').innerHTML=transport.responseText;
				}
			});
		}
		var intervalID= window.setInterval(createRequest, ', (aNumber*1000) printString, ');'.
"
	idToUpdate := anElementToUpdate notNil 
		ifTrue: [self check: anElementToUpdate on: aContext. anElementToUpdate id]
		ifFalse: [#nothingToUpdate]. 
	url := self ajaxCallUrl. 
	parms:= self ajaxCallUrlParametersFor: anElementToUpdate context: aContext.
	anArgString notNil ifTrue: [parms := parms, '&parm=', anArgString].
	anArg2String notNil ifTrue: [parms := parms, '&parm2=', anArg2String].
	anElementToRecreate notNil ifTrue:
		[self check: anElementToRecreate on: aContext.
		parms := parms, '&ajaxElementToRecreateId=', anElementToRecreate id asString].
"


"	this original Prototype one caues memory leak! "
"	self scriptAfter: 'new Ajax.PeriodicalUpdater(''', self id asString, ''', ''', url, 
		''', {method: ''post'', postBody: ''', parms, 
		''', evalScripts: true, frequency: ', aNumber printString, '})'
"