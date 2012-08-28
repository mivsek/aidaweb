accessing
setCurrent
	self current: true.
	self otherVersionSpecs do: [:each | each clearCurrent].