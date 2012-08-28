private
buttonImage
	"from WebStyle calendarButtonGif ! "
	| methodImage |
	methodImage := WebMethodImage
		fromMethod: #calendarButtonGif
		on: self style 
		contentType: 'image/gif' 
		site: self style site.
	^(WebImage image: methodImage)
		title: 'Choose date';
		imageAlign: #middle;
		onMouseOver: 'this.style.cursor=''pointer'' ';
		onMouseOut: 'this.style.cursor=''default'' '