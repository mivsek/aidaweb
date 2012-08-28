transactions
commit

	"commit the transaction if there is no more pending transactions, otherwise defer commit to
	the next call of this method."
	"WebTransactionMonitor commit"
	self critical: 
		[self clearNilProcesses.
		"self transactions isEmpty" true
			ifTrue: 
				["WebServer default diagnostics ifTrue: [Transcript show: ' comm.']."
"				Swazoo.SwazooServer isPersistent ifTrue: [self gemstoneCommit].  "
				"WebServer default diagnostics ifTrue: [Transcript show: '.ited ']."
				self setLastCommit. ]
			ifFalse: 
				[self clearHangedProcesses.
				self transactions notEmpty ifTrue: 
					[self noCommitFor10min ifTrue: 
						[self notifyNoCommiting.
"						Swazoo.SwazooServer isPersistent ifTrue: [self gemstoneCommit] "]
					]
				]
		].

"WebTransactionMonitor commit"