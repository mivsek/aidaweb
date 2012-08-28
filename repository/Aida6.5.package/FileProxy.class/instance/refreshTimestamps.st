private
refreshTimestamps
	self timestamps at: #created put: self filename createdTimestamp.
	self timestamps at: #modified put: self filename modifiedTimestamp.