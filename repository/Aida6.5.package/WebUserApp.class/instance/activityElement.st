views-elements
activityElement
	| e |
	e := WebElement new. e table width: 1.
	self observee registeredTimestamp notNil ifTrue:
		[e cell addText: 'Registered at ', self observee registeredTimestamp printSloString].
	self observee isLoggedIn
		ifTrue: 
			[e cell addTextBold: 'Logged in'.  
			self observee lastLoginTimestamp notNil ifTrue: 
				[e cell addText:  ' at ', self observee lastLoginTimestamp printSloString] ]
		ifFalse: 
			[e cell addText: 'Logged out'.  
			self observee lastLogoutTimestamp notNil ifTrue: 
				[e cell addText:  ' at ', self observee lastLogoutTimestamp printSloString] ].
	^e