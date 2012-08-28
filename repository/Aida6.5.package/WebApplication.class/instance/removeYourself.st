private
removeYourself
	"called during session application state cleanup"
	self session isNil ifTrue: [^nil].
	self observee notNil ifTrue:
		[self session removeApp: self for: self observee type: #web].
	self session: nil.
	self observee: nil.