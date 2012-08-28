private
setLastCommitTimestamp
	"set the last commit timestamp to current date and time"
	self critical: [
		self timestamps 
			at: #LastCommit 
			put: SpTimestamp now asSeconds].