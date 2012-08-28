system services
messenger
	"for sending and receiving emails"
	^self systemServices 
		at: #Messenger
		ifAbsentPut: [EMailMessenger newOn: self].