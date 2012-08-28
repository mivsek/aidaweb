views
viewImageGallery
	| e |
	e := WebElement new.
	e addText: 'This is a collection of so called <b>method images</b>, that is: images embeded in methods in class <b>WebStyle</b> or its subclasses.'.

	"filetype icons"
	e cell cell addGif: #pdfSmallGif. e cell newCell addText: 'pdfSmallGif'. e cell newRow.
	e cell cell addGif: #pdfMediumGif. e cell newCell addText: 'pdfMediumGif'. e cell newRow.
	e cell cell addGif: #pdfBigGif. e cell newCell addText: 'pdfBigGif'. e cell newRow.
	e cell cell addGif: #wordBigGif. e cell newCell addText: 'wordBigGif'. e cell newRow.
	e cell cell addGif: #excelBigGif. e cell newCell addText: 'excelBigGif'. e cell newRow.
	e cell cell addGif: #xmlBigGif. e cell newCell addText: 'xmlBigGif'. e cell newRow.
	e newCell.

	"filetype icons"
	e cell cell addGif: #arrowBigBlueGif. e cell newCell addText: 'arrowBigBlueGif'. e cell newRow.
	e cell cell addGif: #arrowBigRedGif. e cell newCell addText: 'arrowBigRedGif'. e cell newRow.
	e cell cell addGif: #arrowBigYellowGif. e cell newCell addText: 'arrowBigYellowGif'. e cell newRow.
	e cell cell addGif: #arrowDownBigRedGif. e cell newCell addText: 'arrowDownBigRedGif'. e cell newRow.
	e cell cell addGif: #arrowSmallBlackGif. e cell newCell addText: 'arrowSmallBlackGif'. e cell newRow.
	e cell cell addGif: #arrowTriangleRedGif. e cell newCell addText: 'arrowTriangleRedGif'. e cell newRow.
	e cell cell addGif: #arrowTriangleYellowGif. e cell newCell addText: 'arrowTriangleYellowGif'. e cell newRow.
	e cell cell addGif: #arrowCircledRedGif. e cell newCell addText: 'arrowCircledRedGif'. e cell newRow.
	e cell cell addGif: #arrowCircledGreyGif. e cell newCell addText: 'arrowCircledGreyGif'. e cell newRow.
	e newRow.

	e cell cell addPDFLinkTo: 'http://wiki.eranova.si/e-logis/DOWNLOAD/EAN-standards-roadmap.pdf'.
	e cell newCell addText: 'addPDFLinkTo: '.
	self style pageFrameWith: e title: 'Gallery of embedded images'