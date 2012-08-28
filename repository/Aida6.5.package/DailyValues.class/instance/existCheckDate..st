private
existCheckDate: aDate

	(self days includesKey: aDate asDays) ifFalse:
		[self days at: aDate asDays put: self defaultValue].