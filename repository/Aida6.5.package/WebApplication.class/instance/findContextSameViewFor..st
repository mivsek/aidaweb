private-contexts
findContextSameViewFor: aRequest
	"if a context for the requested view already exist, use it"
	| requestedView |
	requestedView := aRequest view. 
	requestedView isNil ifTrue: [requestedView := #main].
	^self contextForView: requestedView