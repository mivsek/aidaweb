instance creation
new
	^super new
		setCreationMethodAndObject; "Widget or App, needed for multilingual support"
		initialize