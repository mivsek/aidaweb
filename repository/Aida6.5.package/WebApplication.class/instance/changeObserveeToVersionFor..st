private-versions
changeObserveeToVersionFor: aRequest
	| object |
	object := self observee versionWithNumber: (self versionFromRequest: aRequest).
	object notNil ifTrue: [self observee: object]