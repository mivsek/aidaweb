actions
runCloseEventHandler
	"run all action blocks on the closed widget, on #close pseudo event"
	| handler |
	handler := self element widget eventHandlerFor: #close.
	handler notNil ifTrue:
		[^handler handleEvent: nil]. "event is not important"