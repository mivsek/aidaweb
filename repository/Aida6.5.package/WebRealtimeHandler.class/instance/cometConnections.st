handling-comet
cometConnections
	"open Comet connections and their sempaphores"
	^self connections select: [:each | each isComet ]