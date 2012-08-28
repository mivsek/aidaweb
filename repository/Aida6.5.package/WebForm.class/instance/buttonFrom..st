model posting
buttonFrom: aRequest
	"return a button pressed. For defining an action method or block to be called"
	"note that image buttons send values in coordinates, like search.x search.y"
	| btname buttonNames postKeys |
	btname := aRequest postDataAt: 'ajaxPressedButton'.  "in case of Ajax form submit"
	btname notNil ifTrue: [^btname value].
	buttonNames := (self fieldSet select: [:each | each isButton]) 
		collect: [:each | each name].
	postKeys := aRequest postDataKeys collect: [:key | key copyUpTo: $. ]. "remove .x .y"
	btname := buttonNames detect: [:each | postKeys includes: each] ifNone: [''].
	^self fieldNamed: btname.