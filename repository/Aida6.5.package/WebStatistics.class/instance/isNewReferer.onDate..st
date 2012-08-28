private
isNewReferer: anUrlString onDate: aDate
	"this referer is new if it occurs for a first time in last 7 days"
	| counter |
	counter := self refererCounterFor: anUrlString.
	^counter isFirstOnDate: aDate sinceDays: 7