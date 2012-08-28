initialize-release
initialize
	super initialize.
	self
		creationObject: self;
		creationMethod: #ajaxUpdate; "be sure to change it accordingly in subclasses if needed! "
		creationContext: self context;
		setDiv; registerId; "Widgets must always have a web element id! "
		attributesAt: #comment put: self class name; "unofficial attribute, just for easier debuging in browser"
		initForm;
		setStateComposing.
	self buildImmediatelly ifTrue: [self build]