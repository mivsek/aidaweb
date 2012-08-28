private
hidden: aBoolean
	"make this input field hidden one"
	aBoolean ifTrue: [self type: 'hidden']