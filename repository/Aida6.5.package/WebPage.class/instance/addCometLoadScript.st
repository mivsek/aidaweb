private-scripts
addCometLoadScript
	"long polling Ajax call"
	self site cometEnabled ifTrue:
		[self onLoad: 'aidaOpenComet()' ] "will also check that WebSocket is not already open"