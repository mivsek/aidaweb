accessing
presenterBlock
	"this block will be executed in streaming phase. [self observee asJson] is default"
	presenterBlock ifNil: [self initDefaultPresenterBlock].
	^presenterBlock