initialize
initializeDemoSite
	"prepare and start a demo site, if not already"
	"put that in Aida/Web bundle postLoad action!"
	SwazooServer singleton aidaSites isEmpty ifTrue:
		[SwazooServer singleton 
			aidaDemoSite;
			start.
		Transcript 
			cr; cr; 
			show: '*** Aida/Web demo site started, open http://localhost:8888'; 
			cr; cr].