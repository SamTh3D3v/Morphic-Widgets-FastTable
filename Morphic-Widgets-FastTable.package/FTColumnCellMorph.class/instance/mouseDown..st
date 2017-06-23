event handling
mouseDown: event
	| rowIndex cellIndex|
	"perform the click"
	self inform: 'column clicked'