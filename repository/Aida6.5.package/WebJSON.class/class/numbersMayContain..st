private
numbersMayContain: aChar
	^ aChar isDigit or: [#($- $+ $. $e $E) includes: aChar]