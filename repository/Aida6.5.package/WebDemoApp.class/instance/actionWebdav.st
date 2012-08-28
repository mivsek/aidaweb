actions
actionWebdav
	| stream file |
	file := self webdavExampleFilename asFilename. file exists ifTrue: [file delete].
	[stream :=  file appendStream. stream binary. 
	stream nextPutAll: self observee file asByteArray] 
		ensure: [self observee file: nil. stream close].