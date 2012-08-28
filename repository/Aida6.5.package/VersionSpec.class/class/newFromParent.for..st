instance creation
newFromParent: anOldObject for: aNewObject
	| newSpec |
	newSpec := super new
		object: aNewObject;
		parent: anOldObject;
		setIncrementedNumberFromParent;
		clearCurrent.
	aNewObject version: newSpec.
	anOldObject version next: aNewObject.
	^newSpec