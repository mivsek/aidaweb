private
fileExtensions
	fileExtensions isNil ifTrue: [self initFileExtensions].
	^fileExtensions