*Aida
isAjaxPostRequest
	"Asynchronous JavaScript (AJAX) request, with posting an input field in a query"
	^self isAjaxRequest and: [self isPost]
