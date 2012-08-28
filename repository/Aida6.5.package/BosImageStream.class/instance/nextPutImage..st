accessing
nextPutImage: anImage 
	| size process bos bytes |
	(anImage isKindOf: Image) not ifTrue: [^self errorCanNotWrite].
	self writeHeader.
	bytes := WriteStream on: (bytes := ByteArray new: 1024).
	self size timesRepeat: [bytes nextPut: 0].
	bos := BinaryObjectStorage onNew: bytes.
	bos nextPut: anImage asImage.
	size := bytes contents size max: 1.0e-6.
	process := [[imageStream position < size]
				whileTrue: 
					[self progress: imageStream position / size.
					(Delay forMilliseconds: 3) wait]] newProcess.
	process priority: Processor activeProcess priority + 5.
	process resume.
	
	[bos := BinaryObjectStorage onNew: imageStream.
	self progress: 0.
	bos nextPut: anImage asImage.
	self progress: 1]
		valueNowOrOnUnwindDo: 
			[process terminate.
			process := nil].
	^anImage