private-temp files
random
	"a random number string for temporary files"
	^(Random new  next * 1000000) truncated printString.