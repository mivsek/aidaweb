events-ajax
onSubmitUpdate: anElement with: anArgString optional: anArg2String
	"first argument will be send as an argument of the method while second is additional"
	"See WebApplication>>respondToAjaxRequest: and specially #ajaxUpdate:from: for more"
	"Prototype specific"
	self onSubmit: 
		(self scriptForUpdate: anElement from: anElement
			with: anArgString optional: anArg2String
		 	context: self context).