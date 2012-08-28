private
mutex
	"for critical sections"
	Muttex isNil ifTrue: [Muttex := AidaMutex new].
	^Muttex