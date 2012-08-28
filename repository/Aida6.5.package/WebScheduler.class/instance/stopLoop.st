private
stopLoop
	self loop notNil ifTrue: [self loop terminate. self loop: nil].