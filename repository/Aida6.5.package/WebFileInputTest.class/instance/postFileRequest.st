setup
postFileRequest
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Connection: Keep-Alive';
		nextPutLine: 'User-Agent: Mozilla/4.72 [en] (X11; I; Linux 2.3.51 i686)';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Referer: http://www.bar.com/takeMeThere.html';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= -----------------20752836116568320241700153999';
		nextPutLine: 'Content-Length: 845';
            crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: 'main';
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="field2"';
		crlf; crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="field7"; filename="event.ical"';
		nextPutLine: 'Content-Type: application/octet-stream';
		crlf; 
		nextPutLine: 'BEGIN:VCALENDAR';
		nextPutLine: 'PRODID:-//Squeak-iCalendar//-';
		nextPutLine: 'VERSION:2.0';
		nextPutLine: 'X-WR-CALNAME:test';
		nextPutLine: 'METHOD:PUBLISH';
		nextPutLine: 'BEGIN:VEVENT';
		nextPutLine: 'UID:an event with a start date and not date and time';
		nextPutLine: 'CATEGORIES:category1,category2';
		nextPutLine: 'CREATED:20050501T110231Z';
		nextPutLine: 'SEQUENCE:0';
		nextPutLine: 'SUMMARY:aTitle';
		nextPutLine: 'PRIORITY:5';
		nextPutLine: 'DTSTART;VALUE=DATE:20050425';
		nextPutLine: 'END:VEVENT';
		nextPutLine: 'END:VCALENDAR';
		crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="attach"';
		crlf;
		nextPutLine: 'Attach';
		nextPutLine: '-------------------20752836116568320241700153999--'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)