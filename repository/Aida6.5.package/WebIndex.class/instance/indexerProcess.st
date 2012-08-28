private
indexerProcess
	"this background process wait for objects to be indexed in workQueue and
	index them without disturbing others."
	| object |
	[true] whileTrue: 
		[object := self workQueue next.
		self privIndexObject: object.
		self reportIndexingOf: object].