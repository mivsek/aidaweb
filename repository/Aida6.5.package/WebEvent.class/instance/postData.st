accessing-value
postData
	"parse a submited form in value into a postData with key/value pairs"
	"From Swazoo HTTPPost>>urlencodedDataFrom:"
	| postData tokens |
	postData := HTTPPostDataArray new.
	tokens := HTTPString subCollectionsFrom: (HTTPString stringFromBytes: self value) delimitedBy: $&.
	(tokens collect: [:each | HTTPString subCollectionsFrom: each delimitedBy: $=]) 
		do: 	[:keyVal | | datum key |
			datum := HTTPPostDatum new.
			datum value: (HTTPString decodedHTTPFrom: 
 				(keyVal last collect: [:char | char = $+ ifTrue: [Character space] ifFalse: [char]])).
			key := (HTTPString decodedHTTPFrom: 
 				(keyVal first collect: [:char | char = $+ ifTrue: [Character space] ifFalse: [char]])).
			postData at: key put: datum].
	^postData

"WebEvent new value: 'a=&c=d'; postData"