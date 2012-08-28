accessing
value: aValue
	"value is first put in buffer. To the domain model is written with #save, but only if 
	pass the validation with #isValid"
	self buffer: aValue.
	self setChanged