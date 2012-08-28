private-obsolete
onClickUpdate: anElementToUpdate  from: anElementToRecreate with: anArgString optional: anArg2String
	"ElementToUpdate will be replaced with contents of the elementToRecreate after its creation method will be   
      called to recreate it. Except for popups both elements are actually the same"
	"First argument will be send as an argument of the method while second is optional"
	"Note that parameters will be sent at the time of building the element and not at the event!" 
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdateOfOld:from: for more"
	anElementToUpdate notNil ifTrue: [anElementToUpdate ensureId]. 
	self onClick: 
		(self scriptForEvent: #click context: self context).
	(self eventHandlerFor: #click) addUpdate: anElementToUpdate with: anArgString.
"		(self scriptForUpdate: anElementToUpdate from: anElementToRecreate
			with: anArgString optional: anArg2String 
			context: self context)
"