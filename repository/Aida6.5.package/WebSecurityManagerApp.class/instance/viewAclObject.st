printing
viewAclObject
	| e index aclRights actionMethod yesNo |
	(self session lastRequest includesQuery: 'index') 
		ifTrue: 
			[index := (self session lastRequest queryAt: 'index').
			self aclObject: (WebApplication allWebAppClasses at: index asInteger)].
	self checkAccessRight: #view.
	self checkAccessRight: #update.
	self checkIfEncrypted.
	self checkAllYesNo.
	self title: 'Access Rigths for: ', self aclObject name asString.
	e := WebElement new.
	e addTextH1: self title.
	(self aclForWho isKindOf: WebUser)
		ifTrue: [e addTextH2: 'User: ', self aclForWho someId]
		ifFalse: [e addTextH2: 'Group: ', self aclForWho name].
	e add: self allYesNoLinks.
	aclRights := SortedCollection withAll: self aclObject allViews sortBlock: [:a : b | a < b]. 
	e table border: 1.
	e cell addText: 'view'.
	e newCell colspan: 2; addText: 'view right'.
	e newCell colspan: 2; addText: 'update right'.
	e newCell addText: 'encrypt'. e newRow.
	aclRights do: [:right |
		e cell addText: right asString attributes: #bold.
		e newCell addText: (self aclObject viewMethodForView: right asSymbol) asString.
		(self viewAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		e newCell
			add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
				view: #aclObject;
				parameter: 'right' value: right asString;
				parameter: 'viewRight' value: (self negate: yesNo)).
		(self aclForWho = 'user') ifTrue: 
			[(self viewInOneGroupAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
			e newCell addText: ('<font size=-1>', yesNo)].

		actionMethod := (self aclObject actionMethodForView: right asSymbol).
		e newCell
			addText: (actionMethod notNil ifTrue: [actionMethod asString] ifFalse: ['<br>']).
		(self updateAllowedFor: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		actionMethod notNil
			ifTrue: 
				[e newCell
					add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
						view:  #aclObject;
						parameter: 'right' value: right asString;
						parameter: 'updateRight' value: (self negate: yesNo)).
				(self aclForWho = 'user') ifTrue: 
					[(self viewInOneGroupAllowedFor: right) 
						ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
					e newCell addText: ('<font size=-1>', yesNo)] ]
			ifFalse:
				[e newCell addText: '<br>'].
			(self needsEncryption: right) ifTrue: [yesNo := 'YES'] ifFalse: [yesNo := 'NO'].
		e newCell align: #center;
			add: ((WebLink  text: ('<b>', yesNo) linkTo: self observee)
				view: #aclObject;
				parameter: 'right' value: right asString;
				parameter: 'encrypt' value: (self negate: yesNo)).
		e newRow].

	self style pageFrameWith: e title: self title