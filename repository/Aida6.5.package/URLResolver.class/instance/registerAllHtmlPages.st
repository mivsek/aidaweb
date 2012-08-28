static pages
registerAllHtmlPages
	"if not already, then register all static html pages in directory hierarchy starting
	at aWebServer homeDirectory. Opan also counters for them"

	| count proxy |
	count := 1.
	self allHtmlPageUrls do: [:url | 
		count \\ 10 = 0 ifTrue: [Transcript cr; show: count printString].
		proxy := self objectOnUrl: url.
		self counterFor: proxy.
		count := count + 1].

"URLResolver default registerAllHTMLPages"