caching
imageForObject: anObject andMethod: aSymbol

	^self cache detect: [:each | each object == anObject and: [each method = aSymbol] ] ifNone: [nil]