event handling
keyStrokeArrowRight: event
	| cellIndex |
   self selectionMode == #column
	ifTrue:[
	cellIndex := self selectedCellsIndex.
	cellIndex second < self numberOfColumns
		ifFalse: [ ^ self ].
	self resetFunction.

	selectionStrategy selectCellIndex: (Array with:cellIndex first with:cellIndex second + 1) event: event]