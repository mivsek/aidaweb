*Aida
aidaStartOn: aPortNumber
	"will start an Aida site on all ip interfaces, ignoring host"
	"if there is no Aida site yet, it created one named 'aidademo''"
	"be sure that it is only site!"
	"SwazooServer aidaStartOn: 8765"
	self singleton aidaStartOn: aPortNumber