views-upload
viewFileUpload
	| e field fname |
	e := WebElement new.
	e cell addTextH1: 'File upload example'. e newRow. e newRow.
	field := WebFileInputField 
		beforeStreamingDo: [:datum |  "datum is actually MIME part"
			fname := datum filename trimBlanks. 
			fname notEmpty ifTrue:
				[self fileStream: (SpFilename named: fname) writeStream. "will be closed in action method"
				self fileStream binary.
				datum writeStream: self fileStream.
				self setStartStamp ] ]    "for measuring upload time"
		filenameAspect: #filename 
		contentTypeAspect: #fileContentType 
		forObject: self.
	e cell add: field; addButtonText: 'Upload'. e newRow.
	e cell add: self uploadReportAndResetElement. "also deletes uploaded file!"
	self style pageFrameWith: e title: 'File upload example'