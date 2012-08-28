map
urlToMethodMap
	MapCache ifNotNil: [^MapCache].
	MapCache := Dictionary new.
	self 
		initMapCache1;
		initMapCache2;
		initMapCache3;
		initMapCache4;
		initMapCache5;
		initMapCache6.
	^MapCache