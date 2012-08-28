printing-users groups
aclForWhoElement
	| e aclObjects ident |
	e := WebElement new.
	(self aclForWho isKindOf: WebUser)
		ifTrue: [e addTextH2: 'User: ', self aclForWho someId]
		ifFalse: [e addTextH2: 'Group: ', self aclForWho name].
	aclObjects := WebApplication allWebAppClasses.
	aclObjects do: [:app || bold |
		ident := WebElement new.
		app appClassLevel timesRepeat: [ident addNbSp: 4].
		e add: ident.
		app allViews notEmpty 
			ifTrue:
				[bold := (self observee isAclSetFor: self aclForWho on: app)   "emphasise those with Acl set"
					ifTrue: ['<b>'] ifFalse: ['']. 
				e add: ((WebLink  text: bold, app name asString, '</b>' linkTo: self observee)
					view: #aclObject; parameter: 'index' value: (aclObjects indexOf: app) printString)]
			ifFalse: [e addText: app name asString].
		e addBreak].
	^e