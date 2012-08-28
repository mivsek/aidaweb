initialize-release
initFields
	fields := Dictionary new.
	self initFieldSet. "with all fields for fast check, if field is already registered"
	self initStreamedFieldSet