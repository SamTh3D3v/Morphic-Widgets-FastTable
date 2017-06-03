event handling
doubleClick: event
	| index|
	selectionMode == #row
	ifTrue:[index := self container rowIndexContainingPoint: event cursorPoint.
	index ifNotNil: [ 
		self doAnnounce: (FTStrongSelectionChanged rowIndex: index event: event) ]]
	ifFalse:[index := self container rowAndColumnIndexContainingPoint: event cursorPoint.
	index ifNotNil: [ 
		self doAnnounce: (FTCellStrongSelectionChanged cellIndex: index event: event) ]].
	