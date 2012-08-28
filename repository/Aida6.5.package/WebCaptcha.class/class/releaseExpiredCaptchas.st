private-cache
releaseExpiredCaptchas
	self cache do: [:each | 
		each isExpired ifTrue: [each removeYourself "from url resolver"]]