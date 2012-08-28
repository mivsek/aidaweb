instance creation
newDiv
	"element enclosed in div tag"
	^self new 
		setDiv;
		ensureId. "let all divs have ids in advance, for potential Ajax from action blocks like 'e update' "