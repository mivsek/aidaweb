serving
answer: anObject toLock: aRequest on: aWebSession
	"WebDAV lock request for that object"
	|  rsp |
	"Temporary!! just return a fake lock!"
	rsp := Swazoo.HTTPLockResponse new.
	rsp start.
	rsp addTagName: 'locktype' value: #write.
	rsp addTagName: 'lockscope' value: #exclusive.
	rsp addTagName: 'depth' value: '0'.
	rsp addLockOwner: 'Administrator'.
	rsp addTagName: 'timeout' value: 'Second-604800'.  "one week, temporary!"
	rsp addLockToken: 'opaquelocktoken:89001c0a-23f2-0310-b37d-c58bc335a1ff'.
	^rsp