security
allowAllUpdatesFor: aWebUserOrGroup on: anAIDASite
	"set access rigths to allow all updates on that web app for specified user or group 
	on specified server"
	self allWebAppClasses do: [:appClass |
		appClass allViews do: [:appView |
			anAIDASite securityManager
				setAccessRights: (appClass updateRightSymbolFor: appView)
				for: aWebUserOrGroup
				on: appClass name] ].

"
WebSecurityManagerApp allowAllUpdatesFor: 
	(WebSecurityManager default adminUser)
		on: AIDASite default
"