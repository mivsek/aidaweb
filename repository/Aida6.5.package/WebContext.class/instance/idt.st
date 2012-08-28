private
idt
	"id text, with f at start if first/top context. For debugging"
	^(self isFirst ifTrue: ['f'] ifFalse: ['']), self id printString