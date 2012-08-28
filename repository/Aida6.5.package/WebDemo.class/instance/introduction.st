introduction
introduction
	"introduction text, In instvar to allow changing it by Scribo and other packages at installation"
	introduction isNil ifTrue: [self introduction: self defaultIntroductionText].
	^introduction