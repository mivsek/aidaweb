testing
isTimedOut
	^(SpTimestamp now asSeconds - self createdAsSeconds) > self timeout