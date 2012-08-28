testing
shouldCountRequests
	| policy |
	policy := self site countingPolicy.
	policy = #all ifTrue: [^true].
	policy = #none ifTrue: [^false].
	policy = #onlyGuests ifTrue: [^self user isGuest].
	policy = #excludeAdmins ifTrue: [^self user inAdminGroup not].
	^true