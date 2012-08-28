private-scripts
addNewTabScriptAndHandler
	"report opening page in new tab or window on the same page"
	self onLoad: 'aidaNewTabReport()'.
	(self eventHandlerFor: #newtab) 
		addNewTab