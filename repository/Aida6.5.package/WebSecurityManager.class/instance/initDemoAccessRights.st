initialize-release
initDemoAccessRights
	"access to all for demos in WebDemoApp"
	"(AIDASite named: 'aidademo') securityManager initDemoAccessRights"
	self allowViews: WebDemoApp allViews asArray 
		andUpdates:  #(editMembers fileUpload gridSelected webdav controlFlow) 
		for: self allUsersGroup on: WebDemoApp.