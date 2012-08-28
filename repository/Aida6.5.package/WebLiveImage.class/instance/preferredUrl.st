private
preferredUrl
	| random |
	random := (AIDASite random next * 10000) truncated printString.
	^'/image/live-', random, '.gif'