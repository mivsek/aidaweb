accessing
browser
	
	"try to find out, which browser a web request originator is using. It can be #Netscape, #IBM, #Microsoft, #lynx, #Mosaic.  Returns #Unknown if not possible to find out the browser type"

	| partOfString |
	self browserString = '' ifTrue: [^#Unknown].
	partOfString := self browserString copyFrom: 1 to: 6.
	partOfString = 'Mozill' ifTrue: [^#Netscape].
	partOfString = '' ifTrue: [^#Microsoft].
	partOfString = 'IBM-We' ifTrue: [^#IBM].
	partOfString = '' ifTrue: [^#Lynx].
	partOfString = '' ifTrue: [^#Mosaic].