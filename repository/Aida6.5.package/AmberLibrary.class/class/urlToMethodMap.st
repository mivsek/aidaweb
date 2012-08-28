map
urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	MapCache := Dictionary new.
	self 
		initMapCache1;
		initMapCache2;
		initMapCache3.
	^MapCache