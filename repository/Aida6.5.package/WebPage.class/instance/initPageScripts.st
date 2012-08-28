initialize-release
initPageScripts
	"page body onLoad, onUnload, etc. scripts"
	self session existsJson ifFalse:
		[self addJSONReportScriptAndHandler]. "is native JSON support present in browser?"
"	self
		addWebSocketLoadScript." "if WebSocket supported in browser"
"		addCometLoadScript; "  "long poling Ajax, if enabled on that site and not WebSocket already open"
"		addNewTabScriptAndHandler; " "report opening page in new tab or window"
"		addUnloadReportScriptAndHandler." "report closing the page or going to another one"
			"WARNING, last two crash Safari 5.0.5 "