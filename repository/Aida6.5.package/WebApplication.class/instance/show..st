private-obsolete
show: aWebElement
	"show something like info dialog. Stop execution here until the dialog is closed. 
	See WebDemoApp control flow for examples"
	| ourCtx popupCtx |
	ourCtx := self context.
	popupCtx := ourCtx request context createNewContext. "is also added to context chain and also to this app"
	popupCtx request: ourCtx request.
	ourCtx request context: popupCtx. "switch to a new context during the rest of execution"
	popupCtx result:
		(self wrap: aWebElement intoPopupWindow: popupCtx window). "e is now window with wrapped element"
	popupCtx result changeContextFrom: ourCtx to: popupCtx. "scan for all references to contexts and change them"
	aWebElement registerFormElementsTo: popupCtx form.  "probably already, but just to be sure"
	ourCtx first mainSemaphore signal. "to return that popup"
	ourCtx wait.
	"now the execution of our process is interrupted until the popup window and therefore its context is closed"