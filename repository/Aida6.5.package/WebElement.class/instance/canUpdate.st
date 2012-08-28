private
canUpdate
	"only pure WebElements (not subclasses, ok, few exceptions) can Ajax/WebSocket update"
	^self class == WebElement