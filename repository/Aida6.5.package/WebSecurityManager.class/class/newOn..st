instance creation
newOn: anAIDASite
	^super basicNew 
		site: anAIDASite.
		"initialize"  "do that separately, otherwise it drops in indefinitive recursion"