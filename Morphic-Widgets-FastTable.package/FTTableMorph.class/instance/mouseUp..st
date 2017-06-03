event handling
mouseUp: event
	| index |
	
	needToggleAtMouseUp ifFalse: [ ^ self ].
	
	"perform the click if the mouse down didn't do it."
	self selectionMode == #row
	ifTrue:[
	index := self container rowIndexContainingPoint: event cursorPoint.
	self selectRowIndex: index event: event]
	ifFalse:[
	index := self container rowAndColumnIndexContainingPoint: event cursorPoint.
	self selectCellIndex: index event: event].
	needToggleAtMouseUp := false.
	