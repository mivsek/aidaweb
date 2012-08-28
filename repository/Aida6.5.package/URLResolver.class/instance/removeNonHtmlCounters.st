request counting
removeNonHtmlCounters
	self counters keys do: [:object |
		object aidaContentType ~= 'text/html' ifTrue:
			[self removeCounterFor: object] ]

"URLResolver default removeNonHTMLCounters"