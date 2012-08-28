actions
addCloseWindow
	"closes that window and also its execution context"
	| ctx parentCtx |
	^self addActionBlock:
		[:receivedEvent |
		ctx := receivedEvent context. 
		ctx isFirst ifFalse:
			[parentCtx := ctx parent.
			ctx result: WebElement basicNew.
			parentCtx result: ctx result. "just in case"
			parentCtx answer: ctx answer. "if any"
			ctx first mainSemaphore signal. " to ensure continuing main thread"
			ctx parent isFirst ifTrue: [ctx parent stopProcess].  "we don't need it anymore"
			parentCtx window popupStub update. "to actually close popup window on browser"
			self runCloseEventHandler. "to run all action blocks on #close pseudo event"
			ctx window afterCloseUpdate notNil ifTrue: [ctx window afterCloseUpdate update].
			ctx close] ] "finaly the time to safely close our context"