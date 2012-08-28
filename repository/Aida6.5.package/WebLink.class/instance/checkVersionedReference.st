private
checkVersionedReference
	"if ooReference is not a current version, then point it to current and add 
	version parameter to url. Version objects have always same identity, that
	is those of current object in version chain! "
	self ooReference isCurrentVersion ifTrue: [^self].
	self parameter: 'version' value: self ooReference versionNumber.
	ooReference := self ooReference currentVersion.