private-contexts
findCreateOrSerializeContextFor: aRequest
	"and set the current context and view"
	"for posts and ajax request the context id must always be present in request!"
	"Serialize execution if some other request is already executing"
	| ctx |
	ctx := self findContextFor: aRequest.
	(ctx isNil and: [aRequest isPost or: [aRequest isAjaxRequest]]) ifTrue: [^nil]. "this should not happen!"
	ctx isNil ifTrue: [ctx := self findContextSameViewFor: aRequest]. "temporary"
	ctx isNil ifTrue: 
		[ctx := (WebContextFirst newOn: self) view: aRequest view.
		self addContext: ctx].
	ctx isBusy ifTrue: [ctx serialize: aRequest].  "context is busy, serialize execution"
	ctx event: aRequest.
	aRequest context: ctx.
	^ctx