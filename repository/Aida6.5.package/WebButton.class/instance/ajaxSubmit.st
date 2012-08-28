private-ajax
ajaxSubmit
	"submit a form by Ajax instead of normal post. Page is NOT reloaded! " 
	self isAjaxSubmit ifTrue: [^nil].
	self onClick:  "actually submit"
		(self scriptForSubmitOnEvent: #submit context: self context).
	(self eventHandlerFor: #submit)
		addAcceptSubmittedForm.
	self onClick: 'return false'. "to break normal form submitting and full page reload"	
	self setAjaxSubmit.