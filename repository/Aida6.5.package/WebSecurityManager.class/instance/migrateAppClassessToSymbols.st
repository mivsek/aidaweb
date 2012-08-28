private
migrateAppClassessToSymbols
	"do not use app classes but their names as symbols"

	self accessByObject keys do: [:obj |
		((obj isKindOf: Behavior) and: [obj includesBehavior: WebApplication]) ifTrue: [
			self accessByObject 
				at: obj name 
				put: (self accessByObject at: obj).
			self accessByObject removeKey: obj] ].

"WebSecurityManager default migrateAppClassessToSymbols"