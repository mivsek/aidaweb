private
isExpired
	"it exists more than few hours"
	^(SpTimestamp now asSeconds - self preparedTimestamp asSeconds) > (10*3600)