settings-directories
homeDirectory

	^self settings  at: #homeDirectory ifAbsentPut: [self defaultHomeDirectory]