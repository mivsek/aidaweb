running
run
	"run this event (in forked process), remove it from queue and reschedule if periodic"
	self block notNil 
		ifTrue: [ [self block value] forkAt: self runPriority]
		ifFalse: [ [self object perform: self method] forkAt: self runPriority].
	self parent queue removeFirst.
	self isPeriodic ifTrue: [self reschedule]
