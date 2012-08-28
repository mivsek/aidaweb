private-ajax
checkIfFirstInMethodOn: aContext
	"is this element created as first one in this method? Set the flag if true. Needed for checking if element is
	able to Ajax update or not"
	"this method doens't work correclty yet, it declares other elements in method as first too!!!"
	| stContext request |
	stContext := thisContext . "find a context of a creation metod"
	[stContext receiver isWebApplication 
		or: [stContext receiver isWebWidget 
			or: [stContext receiver isWebStyle]] ]
		whileFalse: 
			[stContext := stContext sender. stContext isNil ifTrue: [^nil]].
	request := aContext event notNil
		ifTrue: [aContext event]
		ifFalse: [self firstRequestFromStack].
	(request isNil or: [request isAjaxRequest not])
		 ifTrue: [self otherAt: #firstInMethod put: true. ^self]. "Temporary! in case of WebSocket message there is no request"
	(request creationStContexts includes: stContext) ifFalse:
		[self otherAt: #firstInMethod put: true.
		request creationStContexts add: stContext]