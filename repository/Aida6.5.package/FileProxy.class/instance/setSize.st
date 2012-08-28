private
setSize
	"size of content in bytes"
	(self elements notEmpty)
		ifTrue: [self size: (self elements inject: 0 into: [:sum : e | sum + e size]) ]
		ifFalse: [self size: self content size]