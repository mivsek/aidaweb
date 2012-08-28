private-javascript
javascript
	"concatenate all js* methods together, sorted my method name alphabeticaly! "
	"WebStyle new javascript"
	| stream |
	stream := WriteStream on: String new. 
	self allJavascriptMethods do: [:method | 
		stream nextPut: Character cr;   nextPut: Character lf.
		stream nextPutAll: ('/* ', (self class classNameFor: method), ' ', method asString, ' */'). 
		stream nextPut: Character cr;  nextPut: Character lf.
		stream nextPutAll: (self perform: method)].
		stream nextPut: Character cr;  nextPut: Character lf.
	^stream contents