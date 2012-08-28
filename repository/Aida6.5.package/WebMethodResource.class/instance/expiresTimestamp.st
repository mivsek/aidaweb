accessing
expiresTimestamp
	"24 hours from now, to avoid reloading of images" 
	^SpTimestamp fromSeconds: SpTimestamp now asSeconds + (24*3600)