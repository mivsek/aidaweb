odb specific
onFreeSessionFor: anObject remotePerform: aSelector

	^self onFreeSessionFor: anObject remotePerform: aSelector withArgs: #()


"WebTransactionMonitor onFreeSessionFor: AIDARoot remotePerform: #copy"