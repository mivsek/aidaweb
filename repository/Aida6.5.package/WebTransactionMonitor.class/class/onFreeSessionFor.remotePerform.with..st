odb specific
onFreeSessionFor: anObject remotePerform: aSelector with: anArgument

	^self onFreeSessionFor: anObject remotePerform: aSelector withArgs: (Array with: anArgument)

"WebTransactionMonitor onFreeSessionFor: AIDARoot remotePerform: #at: with: 'planid' "