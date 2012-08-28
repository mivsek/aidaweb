access-rights
canBeViewed
	^self user hasAdminRights or: [self user == self observee]