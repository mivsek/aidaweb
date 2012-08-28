accessing
files
	"a dictionary of urls as keys  and FileProxies as values"
	files ifNil: [self initFiles].
	^files