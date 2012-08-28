testing
testSetCurrent
	| o spec |
	o := VersionedObject new.
	spec := VersionSpec newFromParent: o for: VersionedObject new.
	self assert:  o isCurrentVersion.
	self deny:  spec isCurrent.
	spec setCurrent.
	self assert:  spec isCurrent.
	self deny: o isCurrentVersion.