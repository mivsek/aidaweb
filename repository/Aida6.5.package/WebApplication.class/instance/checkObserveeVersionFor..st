private-versions
checkObserveeVersionFor: aRequest
	"change observee to point to correct version if necessary"
	(self isVersionRequest: aRequest) ifTrue: [^self changeObserveeToVersionFor: aRequest].
	self observee isCurrentVersion ifFalse: [self observee: self observee currentVersion].