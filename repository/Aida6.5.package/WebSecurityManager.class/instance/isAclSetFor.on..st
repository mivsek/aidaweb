access control
isAclSetFor: aUserOrGroup on: anAppClass
	| aclDict aclSet |
	aclDict := self accessByObject at: anAppClass name ifAbsent: [^false].
	aclSet := aclDict at: aUserOrGroup ifAbsent: [^false].
	^aclSet notEmpty