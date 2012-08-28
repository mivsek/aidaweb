translation
prepareForTranslation
	"if multilingual text, replace it with in-place input field"
	| translDict replacement session |
	self isMultilingual ifFalse: [^nil].
	session := self app session.
	translDict := session site translator 
		dictToTranslate: self text to: session languageBasic for: self  on: session. "it will create one if not exists yet"
	replacement := WebInPlaceEditableText 
		aspect: self text value for: translDict size: self text value size.
	replacement onChangePost.
"	self parent replace: self with: replacement. "
	self add: replacement. "this will encapsulate inline text editor in original text formating"
	text := nil.