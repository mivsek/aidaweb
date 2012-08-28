testing
shouldLogRequests
	| policy |
	policy := self site loggingPolicy.
	policy = #all ifTrue: [^true].
	policy = #none ifTrue: [^false].
	policy = #onlyGuests ifTrue: [^self user isGuest].
	policy = #excludeAdmins ifTrue: [^self user inAdminGroup not].
	^true