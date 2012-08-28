image snapshot
imageSnapshot
	"Save an image and show elapsed time on transcript"
	"Snapshoting is coordinated so that only one snapshot occurs out of many calls"
	"AIDASite imageSnapshot"
	"Squeak specific"
	| elapsed |
	(self isHourlySnapshot and: [self shallSnapshot]) ifFalse: [^nil]. "to allow only one snapshot per hour"
	self setLastSnapshot.
	self reportImageState. "for debugging"
	WebSessionManager allInstances do: [:each | each removeNonactiveGuestSessions].	"this really belongs here?"
	Processor activeProcess priority: Processor userInterruptPriority. "to avoid image block bug"
	elapsed := Time millisecondsToRun: [SmalltalkImage current saveSession]. "Squeak specific"
	Transcript show: ' in ', (elapsed // 1000) printString, 's '.  "reports elapsed time to Transcript"