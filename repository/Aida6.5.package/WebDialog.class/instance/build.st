printing
build
	self class: #dialog.
	self isConfirmation ifTrue: [self buildConfirmation].
	self isInfo ifTrue: [self buildInfo].