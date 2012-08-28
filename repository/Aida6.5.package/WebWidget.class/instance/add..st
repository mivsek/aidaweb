private
add: anElement
	"all adding delegated to the form"
	self form add: anElement.
	anElement postAddAction.
	^anElement