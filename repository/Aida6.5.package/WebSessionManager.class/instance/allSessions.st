accessing
allSessions
	^self sessions values asSet  "to remove duplicates because the session id can be double, 
							     one for ssl too!"