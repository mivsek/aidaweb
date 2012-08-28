testing
hasFileChanged
	"check if original file changed since last visit"
	^self modifiedTimestamp ~= self filename modifiedTimestamp.