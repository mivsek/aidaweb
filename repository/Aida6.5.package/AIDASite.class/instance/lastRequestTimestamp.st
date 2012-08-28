statistics
lastRequestTimestamp
	"time and date of last web request. If noone yet, return nil"
	^SpTimestamp fromSeconds: (self timestamps at: #LastRequest ifAbsent: [^nil])