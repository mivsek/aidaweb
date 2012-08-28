accessing
allowedIPs
	"converted to string of addresses, each in new line, no comma needed"
	^self observee allowedIPs inject: '' into: [:text :ipString || separator | 
		separator := (ipString = self observee allowedIPs last)
			ifTrue: [''] ifFalse: [(String with: Character cr)].
		text, ipString, separator].