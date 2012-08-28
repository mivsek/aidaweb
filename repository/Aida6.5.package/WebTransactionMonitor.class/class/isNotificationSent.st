accessing
isNotificationSent

	NotificationSent isNil ifTrue: [self resetNotificationSent].
	^NotificationSent