private-obsolete
respondToAjaxCloseWindow: aRequest
	"OBSOLETE"
	| ctx |
	ctx := aRequest context.
	ctx result: WebElement basicNew.
	ctx parent result: ctx result. "just in case"
	ctx first mainSemaphore signal. " to ensure continuing main thread"
	ctx parent isFirst ifTrue: [ctx parent stopProcess].  "we don't need it anymore"
	ctx close. "finaly the time to safely close our context"