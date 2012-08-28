adding-removing
resetAt: aDate
	"put default value at this date"
	^self at: aDate put: self defaultValue