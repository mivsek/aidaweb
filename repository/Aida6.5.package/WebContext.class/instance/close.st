executing
close
	"close process if any and pass control to parent context, which will continue executing itrs process if any" 
	"It also removes itself from context chain"
	self app removeContext: self.
	self isFirst not ifTrue: 
		[self parent child: nil.
		self event notNil ifTrue: 	  " parent context will now continue executing our req (and its old req if different)"
			[self event context: self parent.    "just to be sure" 
			self parent event notNil ifTrue: [self parent event context: self parent]]. 
		self parent isInterrupted 
			ifTrue: [self parent signal] ]. "to continue executing there"
	self event: nil; answer: nil.
	self stopProcess. "can accidentally terminate process on which we are right now executing?"
	self setClosed.