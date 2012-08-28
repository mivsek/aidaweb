private
autoConvertAndEncodeValue: aValue on: aSession
	| vlue |
	vlue := WebFormElement autoConvertToString: aValue.   "dates, numbers etc."
	vlue := AIDASite encodeQuoteEntitiesIn: vlue.               "char entity encoding just for double quote '' "
	vlue := AIDASite convertToWeb: vlue on: aSession.      "UTF-8 encoding"
	^vlue