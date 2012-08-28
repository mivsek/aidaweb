*Aida
postDataKeysNotStreamed
	"keys for a postData which is not streamed"
	self ensureFullRead. "defered parsing of postData"
	^(self postData underlyingCollection select: [:assoc | assoc value isStreamed not])
		collect: [:assoc | assoc key]