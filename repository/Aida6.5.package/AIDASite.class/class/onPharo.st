testing
onPharo
	"Squeak specific" "Pharo specific"
	Dialect isNil ifTrue: [self setDialect].
	^Dialect = #Pharo