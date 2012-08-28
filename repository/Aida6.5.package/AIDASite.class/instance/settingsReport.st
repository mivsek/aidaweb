settings
settingsReport
	"a brief report of current settings to transcript, used at site startup"
	Transcript cr; show: 'server diagnostics: '.
	self diagnostics
		ifTrue: [Transcript show: 'ON']
		ifFalse: [Transcript show: 'OFF'].
	Transcript cr.