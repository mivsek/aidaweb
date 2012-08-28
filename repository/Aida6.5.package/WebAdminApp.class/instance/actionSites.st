actions
actionSites
	self newSite: AIDASite new.
	self newSite uriPattern first 
		ip: self observee ip;
		port: self observee port.
	self redirectToView: #addSite.