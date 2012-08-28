VersionSpec defines a versioned object by its number and position in version chain.

Instance Variables:
	number	<String>	 number of that version. Integer by default, but it can be any string
	current	<Boolean> true, if this version is current, that is, most important, released, etc.
	parent	<Object> parent, that is, previous version of that object, nil if noone
	next		<Object> next version of that object, nil if noone

