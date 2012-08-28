private-ids
announceReplacementWith: anOldElement
	"next creation of WebElement (see class #new) will replace its id by that from anOldElement"
	"for robustness we store also the process it announced that! "
	self replacementAnnouncements at: Processor activeProcess put: anOldElement