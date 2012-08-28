private
setDialect
	"for now only Squeak or Pharo"
	"Squeak specific" "Pharo specific"
	Dialect := (('Pharo*' match: SystemVersion current version)
		ifTrue: [#Pharo]
		ifFalse: [#Squeak])
	