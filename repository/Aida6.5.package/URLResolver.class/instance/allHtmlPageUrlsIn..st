static pages
allHtmlPageUrlsIn: aDirectoryString
	"find all .htm and .html pages in directory hierarchy starting at a specified directory and all 	subdirectories.	Return as collection of relative url links"

	| collection dir |
	dir := aDirectoryString.
	dir last ~= $\ ifTrue: [dir := dir, '\'].
	dir asFilename exists ifFalse: [^#()].
	collection := OrderedCollection new.
	aDirectoryString asFilename directoryContents do: [:each | 
		(dir, each) asFilename isDirectory
			ifTrue: [collection addAll: (self allHtmlPageUrlsIn: (dir, each))]
			ifFalse: 
				[('.htm' match: each asFilename extension) ifTrue:
					[collection add: (self urlForFile: each asString directory: aDirectoryString)] ]
		].
	^collection.

"URLResolver default allHTMLPageUrlsIn: 'h:\wwwroot\planid' "