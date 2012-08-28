setup
at: aTimestamp runBlock: aBlockClosure
	self timestamp: aTimestamp.
	self block: aBlockClosure.
	self setPeriodSingle