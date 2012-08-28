static pages
allHtmlPagesSize
	"sums sizes of all static pages"

	| fname sum |
	sum := 0.
	self allHtmlPageUrls do: [:url | 
		fname := self site homeDirectory, url.
		fname := fname copyReplaceAll: '/' with: '\'.
		fname asFilename exists 
			ifTrue: [sum := sum + fname asFilename fileSize] ].
	^sum

"URLResolver default allHTMLPagesSize"