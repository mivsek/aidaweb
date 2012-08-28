examples
sendExample
	"(AIDASite named: 'aidademo') repository messenger sendExample"
	"Setup SMTP server first in repository settings!"
	| body from to |
	body := 'Emailing test'.
	from := Person new email: 'aida@eranova.si'.
	to := Person new email: 'janko@eranova.si'.
	self 
		sendSubject: 'Aida Emailer test' body: body 
		from: from to: to