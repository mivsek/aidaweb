private-adding-removing
removeLastNil
	"REPARING BAD HISTORIES - remove last entry if value nil. Initialize if no more entries"
	self values isEmpty 
		ifTrue: 
			[self initialize. self values removeLast; addLast: true.
			Transcript cr; show: 'init, true']
		ifFalse: [self values last isNil ifTrue: 
			[self removeIndex: (self dates size).
			self removeLastNil] ]