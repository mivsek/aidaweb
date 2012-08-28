adding other elements
addPageBreak
	"for printing to printer, to break into a new page!"
	self add: (WebElement newDiv class: #pageBreak).

"	^self addBreak
		class: #printOnly;
		style: 'page-break-after: always';
		yourself."