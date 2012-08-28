accessing
jobRoleWithUuid: aString
	"search for this job role through hierarchy starting from self"
	| found |
	^self allJobRoles detect: [:each | each uuid = aString] ifNone:
		[self units do: [:each | found := each jobRoleWithUuid: aString. found notNil ifTrue: [^found] ].
		nil]