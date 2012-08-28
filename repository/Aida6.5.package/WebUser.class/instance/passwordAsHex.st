accessing
passwordAsHex
	"leading zero in each byte ommited! 0F = just F !"
	"Squeak specific!"
	^(self password
		inject: (WriteStream on: String new)
		into:
			[:stream :byte | 
			stream nextPutAll: 
				((byte printStringRadix: 16) copyReplaceAll: '16r' with: ''). "Squeak specific!"
			stream]) contents