accessing
nextImage
	| size process bos image |
	self readHeader isNil ifTrue: [^nil].
	size := imageStream size max: 1.0e-6.
	process := [[imageStream position < size]
				whileTrue: 
					[self progress: imageStream position / size.
					(Delay forMilliseconds: 3) wait]] newProcess.
	process priority: Processor activeProcess priority + 5.
	process resume.
	
	[bos := BinaryObjectStorage onOldNoScan: imageStream.
	self progress: 0.
	image := bos next.
	self progress: 1]
		valueNowOrOnUnwindDo: 
			[process terminate.
			process := nil].
	^image