settings
afterLogin
	"url of a page to jump after login or #lastPage to back to last page before logout"

	^self settings at: #afterLogin ifAbsentPut: [#lastPage]. "back to last page before logout"