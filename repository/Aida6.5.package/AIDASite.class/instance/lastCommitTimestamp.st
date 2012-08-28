statistics
lastCommitTimestamp
	"time and date of last commit to the database. If noone yet, return nil"
	^SpTimestamp fromSeconds: (self timestamps at: #LastCommit ifAbsent: [^nil])