private
autoConvertAndEncodeValue: aValue
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue. "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding just for double quote '' "
	^vlue