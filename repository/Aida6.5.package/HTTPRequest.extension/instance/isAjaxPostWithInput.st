*Aida
isAjaxPostWithInput
	"Asynchronous JavaScript (AJAX) request, with posting an input field in a post data"
	(self isPost and: [self isAjaxRequest]) ifFalse: [^false].
	^(self postDataKeys contains: [:each | 'field*' match: each]) 
		or: [self isAjaxPostWithSingleInput "uncheck a single checkbox doesn't have any add. field ! "
			or: [self postDataKeys includes: 'ajaxPressedButton'] ]