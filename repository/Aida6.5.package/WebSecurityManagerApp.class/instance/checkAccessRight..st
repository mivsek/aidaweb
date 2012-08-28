printing-access control
checkAccessRight: aSymbol
	"if YES or NO is pressed for a #view or #update method in aclObjectPage, then set or reset a view
	access rights for current user or group, web app and view symbol"
	| right command |
	(self session lastRequest includesQuery: 'right') 
		ifTrue: [right := (self session lastRequest queryAt: 'right')].
	aSymbol = #view
		ifTrue:
			[(self session lastRequest includesQuery: 'viewRight') 
				ifTrue: [command := (self session lastRequest queryAt: 'viewRight')] ]
		ifFalse:
			[(self session lastRequest includesQuery: 'updateRight') 
				ifTrue: [command := (self session lastRequest queryAt: 'updateRight')] ].
	
	command = 'YES' ifTrue: 
		[self observee 
			setAccessRights: 
				(aSymbol = #view
					ifTrue: [aclObject viewRightSymbolFor: right asSymbol]
					ifFalse:  [aclObject updateRightSymbolFor: right asSymbol])
			for: aclForWho 
			on: self aclObject name].
	command = 'NO' ifTrue: 
		[self observee 
			removeAccessRights: 
				(aSymbol = #view
					ifTrue: [aclObject viewRightSymbolFor: right asSymbol]
					ifFalse:  [aclObject updateRightSymbolFor: right asSymbol])
			for: aclForWho 
			on: self aclObject name].