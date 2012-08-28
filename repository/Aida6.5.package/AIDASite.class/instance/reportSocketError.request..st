serving
reportSocketError: anException request: aRequest
	"some hard to find error while streaming, i'm trying to debug it with that report"
	Transcript cr; show: '**SpSocketError on ', self name, ': ', 
		anException parameter messageText; cr.
	Transcript show:  aRequest printString; cr.