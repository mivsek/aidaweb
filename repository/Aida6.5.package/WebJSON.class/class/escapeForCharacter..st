private
escapeForCharacter: c
	^ self characterEscapeMap at: c ifAbsent: [nil]