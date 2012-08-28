private
addGroup: aWebUserGroup ifExist: aBlock
	"add new group. If already exist ( as object or as group with the same name) do aBlock"
 	(aWebUserGroup isKindOf: WebUserGroup) ifFalse: [^self error: 'This is not aWebUserGroup'].
	(self existGroupNamed: aWebUserGroup name) ifTrue: [aBlock value].
	^self groups add: aWebUserGroup