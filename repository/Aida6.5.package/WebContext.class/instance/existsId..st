private-ids
existsId: aSymbol
	"check in a whole context chain, not only in current context! "
	^(self elementId: aSymbol) notNil