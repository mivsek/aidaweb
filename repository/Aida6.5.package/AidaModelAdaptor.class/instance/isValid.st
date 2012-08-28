validation
isValid
	"bufered value is valid according to the rule in validationBlock"
	self changed ifFalse: [^true]. "value not changed, nothing to validate!"
	self validationBlock isNil ifTrue: [^true]. "leave this instvar nil until really needed, to avoid garbage"
	^self validationBlock value: self buffer