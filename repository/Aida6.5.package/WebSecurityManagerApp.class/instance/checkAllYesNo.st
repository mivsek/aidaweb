printing-access control
checkAllYesNo
	"if YES or NO is pressed for a #view or #update method in aclObjectPage, then set or reset a view
	access rights for current user or group, web app and view symbol"
	| yesNo |
	(self session lastRequest includesQuery: 'allViews') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allViews').
			self aclObject allViews do: [:each |
				yesNo = 'YES'
					ifTrue: 
						[self observee
							setAccessRights: (aclObject viewRightSymbolFor: each)
							for: aclForWho 
							on: self aclObject name]
					ifFalse: 
						[self observee
							removeAccessRights: (aclObject viewRightSymbolFor: each)
							for: aclForWho 
							on: self aclObject name] ] ].
	(self session lastRequest includesQuery: 'allUpdates') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allUpdates').
			self aclObject allViews do: [:each |
				(aclObject actionMethodForView: each) notNil ifTrue: 
					[yesNo = 'YES'
						ifTrue: 
							[self observee
								setAccessRights: (aclObject updateRightSymbolFor: each)
								for: aclForWho 
								on: self aclObject name]
						ifFalse: 
							[self observee
								removeAccessRights: (aclObject updateRightSymbolFor: each)
								for: aclForWho 
								on: self aclObject name] ] ] ].
	(self session lastRequest includesQuery: 'allEncrypted') 
		ifTrue: 
			[yesNo := (self session lastRequest queryAt: 'allEncrypted').
			self aclObject allViews do: [:each |
				yesNo = 'YES'
					ifTrue: [self observee
						setAccessRights: (aclObject encryptSymbolFor: each)
						for: aclForWho 
						on: self aclObject name]
					ifFalse: 	[self observee
						removeAccessRights: (aclObject encryptSymbolFor: each)
						for: aclForWho 
						on: self aclObject name]  ] ].