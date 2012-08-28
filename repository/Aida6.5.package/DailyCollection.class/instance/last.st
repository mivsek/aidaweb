accessing
last
	"find last values, starting from today and back in past. Most recent first!"
	self isEmpty ifTrue: [^nil].
	^(self last: 1) first