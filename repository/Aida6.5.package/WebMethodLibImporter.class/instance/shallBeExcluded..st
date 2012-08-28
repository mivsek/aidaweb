private-importing
shallBeExcluded: anAbsoluteDirString
	| relDir |
	relDir := anAbsoluteDirString copyFrom: self baseDir size+1 to: anAbsoluteDirString size.
	^self exclude contains: [:exDir | exDir, '*' match: relDir]