private
removeGroup: aWebUserGroup ifAbsent: aBlock
	"remove group, if exist. If not exist do aBlock. You cannot remove group AllUsers!" 
	aWebUserGroup isAllUsersGroup ifTrue: [^self error: 'group AllUsers cannot be removed!'].
	(self groups includes: aWebUserGroup) ifFalse: [^aBlock value].
	self groups remove: aWebUserGroup.
	aWebUserGroup allUsers do: [:each | aWebUserGroup removeUser: each].
	self removeAllAccessRightsFor: aWebUserGroup