views
viewServerStatistics
	| e |
	self site setLastTimeAliveTimestamp.
	self title: 'Statistics for site: ' , self site name.
	e := WebElement new.
	e table width: self style pageContentWidth.
	e cell color: #yellow.
	e cell colspan: 3; addText: self title header: 3. e newRow.
	e cell addText: 'created: '.
	e newCell align: #right; addText: self session site createdTimestamp printSloString. e newRow.
	e cell addText: 'started: '.
	e newCell align: #right; addText: self session site startedTimestamp printSloString.
	e newCell align: #right; addLinkTo: self observee text: 'History of runs' view: 'serverRuns'. e newRow.
	e cell colspan: 3; addRulerSize: 1. e newRow.
	e cell addText: 'uptime: '.
	e newCell align: #right; addText: (self printSeconds: self session site uptime) , ' h:m:s'. e newRow.
	e cell addText: 'total uptime: '.
	e newCell align: #right; addText: (self printSeconds: self session site totalUptime) , ' h:m:s'. 	e newRow.
	e cell addText: 'total downtime: '.
	e newCell align: #right; addText: (self printSeconds: self session site totalDowntime), ' h:m:s'. e newRow.
	e cell addText: 'availability [%]: '.
	e newCell align: #right; addText: self session site availability printDotString. e newRow.
	e cell colspan: 3; addRulerSize: 1. e newRow.
	e cell addText: 'today requests: '.
	e newCell align: #right; addText: (self session site requestsOnDate: SpDate today) printDotString. e newRow.
	e cell addText: 'yesterday requests: '.
	e newCell align: #right; addText: (self session site requestsOnDate: (SpDate today subtractDays: 1)) printDotString.
	e newRow. e cell addText: 'all requests: '.
	e newCell align: #right; addText: self session site totalRequests printDotString. e newRow.
	e cell colspan: 3; addRulerSize: 1.
	^self style pageFrameWith: e title: self title