static pages
allHtmlPageUrls
	"find all .htm and .html pages in directory hierarchy starting at aWebServer homeDirectory.
	return as collection of relative url links"

	^self allHtmlPageUrlsIn: self site homeDirectory.

"URLResolver default allHTMLPageUrls"