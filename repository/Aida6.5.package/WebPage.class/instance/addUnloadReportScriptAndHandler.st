private-scripts
addUnloadReportScriptAndHandler
	"report unloading (closing, going to another) the page"
	self onUnload: 'aidaUnloadReport()'.
	(self eventHandlerFor: #unload)
		addPageUnload