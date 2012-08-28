initialize-release
clear
	"remove all subelements including tables and event handlers"
	self elements do: [:each | each parent: nil].
	self initElements.
	self clearTableInfo.
	self initScripts.
"	self initEventHandlers. "