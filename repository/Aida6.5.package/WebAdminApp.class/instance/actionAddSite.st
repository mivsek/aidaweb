actions
actionAddSite
	SwazooServer singleton addSite: self newSite.
	self newSite start.
	self redirectToView: #sites.