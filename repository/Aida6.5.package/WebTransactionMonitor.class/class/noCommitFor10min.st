error notifying
noCommitFor10min

	"check if there was no real odb commit more than 10min"

	^(TimeStamp now asSeconds - self lastCommit asSeconds) > (10 * 60)