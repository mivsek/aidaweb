accessing-value
postKeysAndValuesDo: aTwoArgBlock 
	self postData 
		keysAndValuesDo: [:key :each | aTwoArgBlock value: key value: each value]