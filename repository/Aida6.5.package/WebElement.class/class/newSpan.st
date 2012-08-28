instance creation
newSpan
	"element enclosed in span tag"
	^self new 
		setSpan;
		ensureId. "let all spans have ids in advance, for potential Ajax from action blocks like 'e update' "