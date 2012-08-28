initialize-release
initFromApacheMimeTypes
	"see class method. Only mime types, which have some extension defined, are set! "
	"MIMEMap allInstances do: [:each | each initFromApacheMimeTypes] "
	| collection |
	self initMimeTypes; initFileExtensions.
	collection := self class arrayFromApacheMimeTypes.
	collection do: [:col | 
		2 to: col size do: [:inx | self addType: col first andExtension: (col at: inx)] ]