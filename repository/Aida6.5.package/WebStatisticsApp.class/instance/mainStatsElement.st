views-elements
mainStatsElement
	| e |
	self title: 'Site  access statistics'.
	e := WebElement new.
	e table width: self pageWidth; cellSpacing: 0; cellPadding: 0.
      e cell color: #thistle.
	e cell colspan: 4; addText: self title header: 3. e newRow.
	e cell colspan: 4; addRulerSize: 1.e newRow.
	self style statsIntroduction notEmpty ifTrue: [e cell colspan: 4; addText: self style statsIntroduction].
	e cell colspan: 4;
		addBreak; addTextSmall: 'Statistics from: ';
		addTextSmall: ('<b>', session site createdTimestamp printSloString, '</b>'); addTextSmall: ' to: ';
		addTextSmall: ('<b>', SpTimestamp now printSloString, '</b>'); addBreak; addNbSp.
	e newRow. e cell colspan: 4; addRulerSize: 1.
	e newRow color: #thistle.
	e cell addBreak.
	e newCell align: #right; addTextSmall: 'today'.
	e newCell align: #right; addTextSmall: 'yesterday'.
	e newCell align: #right; addTextSmall: 'until now'. e newRow.
	e cell addTextSmall: 'first page'.
	e newCell align: #right; addTextSmall:  (self firstPageCountOnDate: SpDate today) printDotString.
	e newCell align: #right; addTextSmall: (self firstPageCountOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newCell align: #right; addTextSmall: (self firstPageCountTotal) printDotString.
	e newRow color: #fffbf0.
	e cell addTextSmall: 'all pages'. 
	e newCell align: #right; addTextSmall: self site allPagesToday printDotString.
	e newCell align: #right; addTextSmall: self site allPagesYesterday printDotString.
	e newCell align: #right; addTextSmall: self site allPages printDotString. e newRow.
	e cell addTextSmall: 'all pages+images'.
	e newCell align: #right; addTextSmall: (self site totalCounter countsOnDate: SpDate today) printDotString.
	e newCell align: #right; addTextSmall: (self site totalCounter countsOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newCell align: #right; addTextSmall: (self site totalCounter total ) printDotString. e newRow.
	e cell colspan: 4; addRulerSize: 1.
	^e