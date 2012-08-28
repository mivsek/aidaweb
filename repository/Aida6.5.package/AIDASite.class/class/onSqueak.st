testing
onSqueak
	"Squeak specific" "Pharo specific"
	Dialect isNil ifTrue: [self setDialect].
	^Dialect = #Squeak