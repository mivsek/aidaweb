private-streaming
prepareModule
	self class: #moduletable.
	self addTextH3: self header.
	self table width: 1; cellPadding: 0; cellSpacing: 0.
	self body elements notEmpty ifTrue: [self add: self body].