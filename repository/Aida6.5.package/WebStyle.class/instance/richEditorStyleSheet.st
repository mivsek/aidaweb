scripts-components
richEditorStyleSheet
	" for  text area in JavaScript rich text editor, see WebRichEditor"
	"WebStyle new richEditorStyleSheet"
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: '
body {
	font-family: verdana, sans-serif;
	font-color: #666;
	font-size: 90%;
	background-color: #FFFFFF
	};
.mceVisualAid {
	border: 1px dashed #BBBBBB;
	}
'.
	#(css21Text css22Links) do: [:method | 
		stream nextPut: Character cr.
		stream nextPutAll: ('/*', self class name, ' ', method asString, '*/').
		stream nextPut: Character cr.
		stream nextPutAll: (self perform: method)].

	stream nextPutAll: '
h1 { font-size: 130%}
h2 { font-size: 120%}
h3 { font-size: 110%}
h4 { font-size: 100%}
h5 { font-size: 90%}
'.
	^stream contents