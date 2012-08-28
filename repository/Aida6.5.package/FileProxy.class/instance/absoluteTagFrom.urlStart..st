parsing
absoluteTagFrom: aTagString urlStart: anURLString

	""

	| tag url |
	tag := (aTagString copyReplaceAll: '\' with: '/').
	((tag copyFrom: 1 to: 3) = '../')
		ifFalse:  "not relative to parent directory"
			[^((tag copyUpTo: $"), '"', anURLString, 
				(tag copyFrom: ((tag indexOf: $") + 1) to: tag size))]
		ifTrue:
			[tag := tag readStream upTo: $/; upToEnd.
			url := anURLString copyFrom: 1 to: (anURLString lastIndexOf: $/).
			^self absoluteTagFrom: tag urlStart: url].