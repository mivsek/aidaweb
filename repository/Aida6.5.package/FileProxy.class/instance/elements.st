private
elements

	"all elements (texts and tags) of a html page"

	elements isNil ifTrue: 
		[self clearElements.
"		(self contentType = 'text/html') ifTrue: [self refreshContent] "].
	^elements