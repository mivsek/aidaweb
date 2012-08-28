testing
testSecondCreation
	| o spec |
	o := VersionedObject new.
	spec := VersionSpec newFromParent: o for: VersionedObject new.
	self assert: spec number = '2'.
	self deny:  spec isCurrent.
	self deny:  spec isOldest.
	self assert:  spec isNewest.
	self assert: spec parent == o.
	spec setCurrent.
	self assert:  spec isCurrent.
	self deny: spec parent version isCurrent.