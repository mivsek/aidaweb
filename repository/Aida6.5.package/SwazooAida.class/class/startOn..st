start/stop
startOn: portNum   
	"will start a site on that port on all IP interfaces, any host"
      "site will be created if doesn't exist yet"
	SwazooServer aidaStartOn: portNum