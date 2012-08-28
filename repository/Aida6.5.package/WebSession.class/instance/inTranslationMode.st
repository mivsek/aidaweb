session modes
inTranslationMode
	"should text in your Apps be in-place edited for translation?"
	^self inAdminMode or: [self inDevMode]