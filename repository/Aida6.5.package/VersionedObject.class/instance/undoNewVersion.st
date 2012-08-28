copying
undoNewVersion
	"remove new version, if not yet current. Return previous one"
	| previous |
	self isCurrentVersion ifTrue: [^self error: 'cannot remove current version'].
	self isNewestVersion ifFalse: [^self error: 'cannot remove version which is nost last/newest'].
	self isOnlyVersion ifTrue: [^self error: 'cannot remove the one and only version'].
	previous := self parentVersion.
	previous version next: nil.  "this will break a chain of versions to this one"
	^previous