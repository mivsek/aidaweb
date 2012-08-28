receiving
anyNewMail
	^self mailbox deliveryQueue peek notNil.