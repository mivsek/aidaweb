statistics
lastTimeAliveTimestamp
	"lastTimeAliveThread writes to timestamps every minute and commit. 
	Used in case of crash to determine, when a server was last time alive 
	and worked properly"
	^SpTimestamp fromSeconds: 
		(self timestamps at: #LastTimeAlive ifAbsentPut: [SpTimestamp now asSeconds])