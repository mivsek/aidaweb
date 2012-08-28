converting
asDocLink
	"return clipboard contents as a new DocLink"
	^DocLink new
		title: self title;
		url: self url;
		object: self object