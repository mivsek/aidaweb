system services
statistics
	^self systemServices 
		at: #Statistics
		ifAbsent: 
			[self 
				addSystemService: (WebStatistics newOn: self)
				named: #Statistics.
			self register: self statistics onUrl: '/stats'.
			^self statistics].