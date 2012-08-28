settings
isWebDAVEnabled
	"Is Web Distributed Authoring and Versioning (WebDAV, www.webdav.org) ienabled on this site"
		^(self settings includesKey: #WebDAVEnabled)
			 and: [self settings includesKey: #WebDAVEnabled]