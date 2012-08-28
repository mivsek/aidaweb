examples
sendICalExample
	"(AIDASite named: 'aidademo') repository messenger sendICalExample"
	"Setup SMTP server first in repository settings!"
	| body from to |
	body := 'Test meeting call'.
	from := Person new email: 'aida@eranova.si'.
	to := Person new email: 'janko.testni@eranova.si'.
	self 
		sendSubject: 'Aida Meeting call test' body: body 
		icalName: 'meeting.ics'
		content: self exampleICalMeeting
		from: from to: to