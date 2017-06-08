event handling
keyStrokeArrowUp: event
	| index |
   self selectionMode == #row
	ifTrue:[
	index := self selectedRowIndex.
	index > 1
		ifFalse: [ ^ self ].
	self resetFunction.
	selectionStrategy selectRowIndex: index - 1 event: event]
   ifFalse:[
	index := self selectedCellsIndex.
	index first > 1
		ifFalse: [ ^ self ].
	self resetFunction.

	selectionStrategy selectCellIndex: (Array with:(index first - 1) with:index second) event: event]