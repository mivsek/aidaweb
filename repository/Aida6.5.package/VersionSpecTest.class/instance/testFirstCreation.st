testing
testFirstCreation
	| spec |
	spec := VersionSpec firstFor: ''.
	self assert: spec number = '1'.
	self assert:  spec isCurrent.
	self assert:  spec isOldest.
	self assert:  spec isNewest.