printing
build
	| iframe |
	self clear. self setDiv. self hide.
"	self isWakeupTimeout ifFalse: [^self]. "
	iframe := WebIFrame new src: '/admin.html?view=wakeupRichEditor'.
	self add: iframe.
	self setWakeupTimestamp.
	
"	self setDiv. self registerId.
	self session lastRequest isAjaxRequest 
		ifFalse: 
			[self hide.
			self update ] ""to call iframe below in backgrund""
		ifTrue: 
			[iframe := WebIFrame new src: '/admin.html?view=wakeupRichEditor'.
			self add: iframe.
			self setWakeupTimestamp]
"