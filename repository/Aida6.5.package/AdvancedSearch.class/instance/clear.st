accessing
clear
	"clear all search fields"
	self criteria keysAndValuesDo: [:key :value | self criteria at: key put: ''].