initialize-release
clearAttributesExceptId
	self attributes keys do: [:name |
		name ~= #id ifTrue: [self attributes removeKey: name] ]