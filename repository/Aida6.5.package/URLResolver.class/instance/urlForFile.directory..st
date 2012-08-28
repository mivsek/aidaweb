static pages
urlForFile: aFilenameString directory: aDirectoryString

	| path dir |
	dir := aDirectoryString.
	dir last ~= $\ ifTrue: [dir := dir, '\'].
	path := dir, aFilenameString.
	path := path copyReplaceAll: self site homeDirectory with: ''.
	^path copyReplaceAll: '\' with: '/'

"URLResolver default urlForFile: 'index.htm' directory: 'h:\wwwroot\planid\osn' "