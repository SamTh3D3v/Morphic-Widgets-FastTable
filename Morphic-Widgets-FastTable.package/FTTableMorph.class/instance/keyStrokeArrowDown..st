event handling
keyStrokeArrowDown: event
	| index |
	self selectionMode == #row
	ifTrue:[
	index := self selectedRowIndex.
	index < self numberOfRows
		ifFalse: [ ^ self ].
	self resetFunction.
	self selectionStrategy selectRowIndex: index + 1 event: event
	]
   ifFalse:[
	index := self selectedCellsIndex.
	index first < self numberOfRows
		ifFalse: [ ^ self ].
	self resetFunction.
	self selectionStrategy selectCellIndex: (Array with:index first + 1 with:index second) event: event
	].