initialize-release
initialize
	super initialize.
	self unordered.
	self class: self defaultClass.
	self selected: 1