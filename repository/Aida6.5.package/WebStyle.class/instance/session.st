accessing
session
	"try to find a first sender up in calling stack, who is AIDASite and find a session in 
	its local variable stack"

	^self firstSessionFromStack
