private
removeSubform: aWebForm
	subforms isNil ifTrue: [^nil].
	subforms remove: aWebForm ifAbsent: [nil].