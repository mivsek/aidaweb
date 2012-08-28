receiving
getMailMessage
	"gets a MailMEssage from postbox if any. Blocks if there is no messages! "
	| letterInTransit |
	letterInTransit := self mailbox queue next.
"	^Net.MailMessage readFrom: letterInTransit letterText readStream "