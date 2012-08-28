executing
serialize: aRequest
	"Serialize execution if some other request is already executing"
	"for now just wait until previous request finish execution"
	[self isBusy ] 
		whileTrue: [(Delay forMilliseconds: 200) wait].