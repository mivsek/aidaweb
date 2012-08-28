request counting
addCountsFromDictionary: aCountDictionary

| object origCounter stopUrls |
	stopUrls := Col collect: [:assoc | assoc notNil ifTrue: [assoc key] ].
	aCountDictionary keysAndValuesDo: [:url :counter |
	(stopUrls includes: url asLowercase) ifFalse:
		[object := self objectOnUrl: url.
		object notNil ifTrue: 
			[origCounter := self counterFor: object.
			origCounter addCounter: counter ] ]
		ifTrue: ["self halt"] ]

"URLResolver default addCountsFromDictionary: Janko"
"
| boss |
boss := (BinaryObjectStorage onOld: '..\images\janko\LogDict.boss' asFilename readStream).
Janko := boss next.
boss close
"