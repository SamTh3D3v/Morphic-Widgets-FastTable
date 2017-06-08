event handling
keyStrokeArrowLeft: event
	| cellIndex |
   self selectionMode == #column
	ifTrue:[
	cellIndex := self selectedCellsIndex.
	cellIndex second > 1
		ifFalse: [ ^ self ].
	self resetFunction.

	selectionStrategy selectCellIndex: (Array with:cellIndex first with:cellIndex second - 1) event: event]