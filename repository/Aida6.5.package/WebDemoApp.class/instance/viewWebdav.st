views
viewWebdav
	| e link |
	"link := '/', self webdavExampleFilename."
	link := self site uriPattern first currentUrl, '/', self webdavExampleFilename.
	self addWebDAVVBScript. "IE only!"
	link := 'javascript:OpenDoc(''', link, ''')'. "for IE browser only!"
	e := WebElement new. self title: 'WebDAV publishing example'.
	e cell addTextH2: self title. e newRow. e cell addNbSp. e newRow.
	e cell addText: '1. Upload  MS Word document: '.
	e cell add: (WebFileInputField aspect: #file filenameAspect: #filename 
		contentTypeAspect: #fileContentType forObject: self observee). 
	e cell addSpace; addButtonText: 'Upload'. e newRow.
	e cell addText: '2. Now open document from: '. e cell addLinkTo: link text: 'here'. e newRow.
	e cell addText: '3. Save document'. e newRow.
	e cell addText: '4. Repeat from 2 to see if changes got saved'. e newRow.
	self style pageFrameWith: e title: self title.