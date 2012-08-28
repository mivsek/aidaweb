private
filtered
	"objects which pass filter criteria. if nil, filters are not set"
	filtered isNil ifTrue: [self initFiltered].
	^filtered