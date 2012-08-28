adding-removing
addLine: aString
	self lines add: aString.
	self removeOlderLines.
	self announceChange