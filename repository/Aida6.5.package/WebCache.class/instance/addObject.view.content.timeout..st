private-cache
addObject: anObject view: aViewSymbol content: aByteStringOrArray timeout: aSeconds
	| views |
	views := self objects at: anObject ifAbsentPut: [Dictionary new].
	views at: aViewSymbol put: 
		(WebCacheEntry new content: aByteStringOrArray; timeout: aSeconds)