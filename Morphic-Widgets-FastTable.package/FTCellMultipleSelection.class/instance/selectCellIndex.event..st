accessing
selectCellIndex: cellIndex event: event
	event shiftPressed ifTrue: [ ^ self selectCellIndexesUpTo: cellIndex ].
	OSPlatform current isMacOS 
	ifTrue:[event commandKeyPressed ifTrue: [^ self selectAppendingCellIndex: cellIndex  ]] 
	ifFalse:[event controlKeyPressed ifTrue: [^ self selectAppendingCellIndex: cellIndex  ]].
	self toggleCellIndex: cellIndex.
