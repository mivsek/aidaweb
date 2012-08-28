private
critical: aBlock
	"run a block in a critical section (only one block at once!)"
	^self mutex critical: aBlock