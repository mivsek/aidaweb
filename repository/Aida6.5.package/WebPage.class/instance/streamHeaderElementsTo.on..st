private-streaming
streamHeaderElementsTo: aStream on: aSession
	self ensureTitleInHeader. "check once more if title is really there"
	self headers do: [:assoc | 
		aStream nextPutAll: '  <', assoc key, ' '.
		((assoc key = 'script') | (assoc key = 'style')) 
			ifTrue: [| array | 
				array := assoc value class == Array 
					ifTrue: [assoc value] 
					ifFalse: [Array with: assoc value with: ''].
				aStream nextPutAll: (array at: 1), '>', (array at: 2), '</', assoc key, '>']
			ifFalse: [(assoc key = 'title')
				ifTrue: [aStream nextPutAll: '>',  
						(AIDASite convertToWeb: (self translateIfNeeded: assoc value) on: aSession), '</title>']
				ifFalse: [aStream nextPutAll: assoc value, self tagClosing] ].
		aStream nextPutAll: self eol].