event handling
mouseDown: event
	| rowIndex cellIndex|
	"perform the click"
	needToggleAtMouseUp ifTrue: [ ^ self ].
	self selectionMode ==#row
	ifTrue:[
	rowIndex := self container rowIndexContainingPoint: event cursorPoint.
	rowIndex isNil ifTrue:[^ self ].
	(self selectedRowIndexes includes: rowIndex)
		ifFalse: [ self selectRowIndex: rowIndex event: event ]
		ifTrue: [ needToggleAtMouseUp := true ].	"If the cell is selected we let the mouse up toggle to avoid any problem with the drag and drop"]
	ifFalse:[
			cellIndex := self container rowAndColumnIndexContainingPoint: event cursorPoint.
		   cellIndex first isNil ifTrue:[^ self ].
			(self selectedCellsIndexes includes: cellIndex)
		ifFalse: [self selectCellIndex: cellIndex event: event ]
		ifTrue: [ needToggleAtMouseUp := true ].
			].
	self wantsKeyboardFocus
		ifTrue: [ self takeKeyboardFocus ].
	event hand waitForClicksOrDrag: self event: event