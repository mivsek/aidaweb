private-events
elementToReplace
	"Usually we 'replace' itself, but  for popup windows we replace an empty stub element"
	^self otherAt: #ElementToReplace ifAbsent: [self]