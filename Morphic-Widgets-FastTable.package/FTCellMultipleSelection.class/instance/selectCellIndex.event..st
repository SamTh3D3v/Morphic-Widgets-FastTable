accessing
selectCellIndex: cellIndex event: event
	event shiftPressed ifTrue: [ ^ self selectCellIndexesUpTo: cellIndex ].
	event commandKeyPressed ifTrue: [^ self selectAppendingCellIndex: cellIndex  ].
	self toggleCellIndex: cellIndex 
