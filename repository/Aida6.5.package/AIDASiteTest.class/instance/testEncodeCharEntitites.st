testing
testEncodeCharEntitites
	self assert: ((AIDASite encodeCharEntitiesIn: '<tag>') = '&lt;tag&gt;').
	self assert: ((AIDASite decodeCharEntitiesIn: '&lt;tag&gt;') = '<tag>').
	self assert: ((AIDASite encodeCharEntitiesIn: '<>&"') = '&lt;&gt;&amp;&quot;').
	self assert: ((AIDASite decodeCharEntitiesIn: '&lt;&gt;&amp;&quot;') = '<>&"').