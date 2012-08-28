private
removeNonactiveServers
	LocalServers copy do: [:srv | 
		srv isServing ifFalse: [LocalServers remove: srv ifAbsent: []] ]