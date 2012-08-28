initialize-release
initialize
	super initialize.
	self attributesAt: 'mce_editable' put: 'true'.
	self class ensureResourcesInPageHeader "JavaScript, CSS"