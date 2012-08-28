auto type converting
autoConvertAndEncodeQuotes: aValue
	"auto convertion, character entitites encoding (just quotes) for form elements"
	"while UTF-8 encoding is done in WebElement>>printAttribute:value:on:for: ! "
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding for double quote '' "
	^vlue