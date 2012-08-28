examples
exampleICalMeeting
	| event calendar |
	event := ICEvent summary: 'Example meeting'.
	event 
"		textualDescription: (self url, (String with: Character cr), self agendaText); "
		uid: ICSqueakUUIDStrategy new generateUid;
		start: (SpTimestamp now addSeconds: 24*3600)  asSqueakDateAndTime;
		end: (SpTimestamp now addSeconds: 25*3600)  asSqueakDateAndTime;
		organizer: (ICUser new
				commonName: 'Janko'; 
				emailAddress: 'janko@eranova.si');
		location: 'Room 123';
		beMediumPriority; 
		beOpaque;
		beConfirmed. 
	calendar := ICCalendar name: 'aida'.
	calendar method: ICCalendar methodRequest.
	calendar addEvent: event.
 	^(ICCalendarExporter calendar: calendar) 
		export dataStream contents copyReplaceAll: String crlf with: (String with: Character cr)