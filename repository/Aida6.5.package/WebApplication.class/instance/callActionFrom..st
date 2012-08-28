private-form posting
callActionFrom: aRequest
	"Calls an action method if any"
	| form |
	form := aRequest context form.
	aRequest isAjaxPostWithSingleInput ifFalse:     "ajax posts of single form elements doesn't trigger actions!"
		[self callActionMethodForButton: (form buttonFrom: aRequest) on: aRequest context].
	(aRequest session shouldRedirect not and: [aRequest isAjaxRequest not]) ifTrue:
		[self redirectToView: aRequest view]   " after post always redirect to avoid aidaCtx in Urls! "