private-ids
cancelReplacement
	"cancel next #registerId to replace the next element with old one in ids"
	self replacementAnnouncements removeKey: Processor activeProcess ifAbsent: []