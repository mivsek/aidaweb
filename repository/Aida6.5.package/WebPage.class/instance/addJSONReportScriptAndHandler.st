private-scripts
addJSONReportScriptAndHandler
	"report existence of JSON support in browser"
	self onLoad: 'aidaJsonReport()'.
	(self eventHandlerFor: #jsonExists)
		addJsonExists