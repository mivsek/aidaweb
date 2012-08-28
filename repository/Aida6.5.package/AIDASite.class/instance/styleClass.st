settings
styleClass
	(self settings includesKey: #styleClass) ifFalse: 
		[self styleClass: 'DefaultWebStyle' ].
	^(self settings  at: #styleClass) asString