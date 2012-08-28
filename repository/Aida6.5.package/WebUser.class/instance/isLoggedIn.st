testing
isLoggedIn
	^self loginHistory isEmpty not
		and: [(self loginHistory last at: 1) = #login]