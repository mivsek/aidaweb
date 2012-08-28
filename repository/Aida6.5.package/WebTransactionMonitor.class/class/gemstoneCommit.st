odb specific
gemstoneCommit

	| result |
	AIDARoot critical:
		[result := GBSM currentSession commitTransaction.
		result == true ifFalse: 
			[result := GBSM currentSession commitTransaction.
			result == true ifFalse: 
				[Transcript cr; show: '****** commit troubles !!! ******'] ].
		].

"WebTransactionMonitor commit"