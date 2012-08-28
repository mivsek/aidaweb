private
cssClass
	^self settingsAt: #cssClass ifAbsent: [self defaultCssClass]