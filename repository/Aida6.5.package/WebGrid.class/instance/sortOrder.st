private
sortOrder
	^self settingsAt: #sortOrder ifAbsent: [#ascending]