indexing
indexText
	"pure text, without tags, for indexer"
	| stream bodyStart element text |
	bodyStart := (1 to: self elements size) 
		detect: [:index | '<BODY*' match: (self elements at: index)] ifNone: [1].
	stream := WriteStream on: String new.
	bodyStart + 1 to: self elements size do:  [:index | 
		element := self elements at: index.
		(element notEmpty and: [element first ~= $<]) ifTrue: [stream nextPutAll: element] ].
	text := stream contents "copyReplaceAll: WebElement new eol with: ' '". 
	text := text copyReplaceAll: '&nbsp;' with: ' '.
	^text