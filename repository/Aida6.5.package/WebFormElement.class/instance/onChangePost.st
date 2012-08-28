events-ajax
onChangePost
	"after field change immediatelly post its value to server and save it to 
	domain object, if field is valid and complete"
	self setSingleFieldPost.   "so that field will actually be saved, otherwise change will be just announced"
	self onChangeAnnounce.