private-bpm
setProcessFromTaskId
	"set a reference to a BPM process instance, which control a workflow of this app too"
	| uuid workitem |
	uuid := self session lastRequest queryAt: 'taskId' ifAbsent: [^nil].
	workitem := self site repository bpm worklist itemWithTaskUuid: uuid for: self user.
	workitem isNil ifTrue: [^nil].
	self process: workitem task process.
	workitem subscribeToApp: self.