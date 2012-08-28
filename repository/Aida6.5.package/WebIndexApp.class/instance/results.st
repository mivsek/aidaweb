accessing
results
	"here the results of a search are stored."
	results isNil ifTrue: [self initResults].
	^results