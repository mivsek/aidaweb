private-building
setCollectionFromAspect
	"if aspect set instead of colelction directly"
	self aspect isNil ifTrue: [^nil].
	self collection: (self object perform: self aspect)