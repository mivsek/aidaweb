initialize-release
initDefaultAccessRights
	"to allow login, registering new user etc"
	self allowViews: #(login logout forgoten registration passwordSent waitingConfirmation activation 
						wakeupScriptaculous wakeupRichEditor
						loginGoogle loginGoogle2 loginGoogle3 logoutGoogle) "OpenID login" 
		andUpdates: #(login registration passwordSent)
		for: self allUsersGroup on: WebAdminApp.
	self allowViews: #(main activationRequest activate) andUpdates:  #(main) 
		for: self allUsersGroup on: WebRegistrationApp.

"AIDASite allInstances do: [:each | each securityManager initDefaultAccessRights]"