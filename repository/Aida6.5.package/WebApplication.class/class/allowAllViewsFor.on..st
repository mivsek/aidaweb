security
allowAllViewsFor: aWebUserOrGroup on: anAIDASite
	"set access rigths to allow all views on all web apps for specified user or group on specified site"
	self allWebAppClasses do: [:appClass |
		appClass allViews do: [:appView |
			anAIDASite securityManager
				setAccessRights: (appClass viewRightSymbolFor: appView)
				for: aWebUserOrGroup
				on: appClass name] ].
"
WebApplication allowAllViewsFor: 
	(WebSecurityManager default adminUser)
	on: AIDASite default
"