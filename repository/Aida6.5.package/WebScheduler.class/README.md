WebScheduler is a service for running scheduled events. Events can be single or periodic (daily, hourly, ...).
When event is triggered, its block is executed in a separate low priority process. Scheduler time resolution is 1 second. 

Example of periodic event:
	self site scheduler everyHourAt: 30 "minutes" runBlock: [Trascript show: 'half a hour!].

Instance Variables:
	site		<anAIDASite>	
	queue	<OrderedCollection>	queue of events, waiting for execution
	loop	<Process>		loop process, every second looks into queue to run an event
	mutex	<AidaMutex>   to protect queue operations

