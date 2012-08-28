private-adding-removing
removeAllNils
	"REPARING BAD HISTORIES - remove all nil entries. Initialize if no more entries"

	2 to: self values size do: [:index |
		(self values at: index) isNil ifTrue: 
			[self removeIndex: index. ^self removeAllNils] ]