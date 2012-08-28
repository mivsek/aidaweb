auto type converting
autoConvertAndEncodeValue: aValue
	"auto convertion, character entitites encoding for form elements"
	"while UTF-8 encoding is done in WebElement>>printAttribute:value:on:for: ! "
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeCharEntitiesIn: vlue.               "char entity encoding for < > & '' "
	^vlue