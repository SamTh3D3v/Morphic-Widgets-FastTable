operations
keyStrokeEdit: event
"the keystoke edit is triggered by Ctrl+e, and it simply fires the StrongSelection Announcement, the announcement should be
handled when setting up the table "		
	| index|
	selectionMode == #row
	ifTrue:[index := self selectedRowIndex  .
	index ifNotNil: [ 
		self doAnnounce: (FTStrongSelectionChanged rowIndex: index event: event) ]]
	ifFalse:[index := self selectedCellsIndex .
	index ifNotNil:  [ 
		index first ifNotNil: [  
		self doAnnounce: (FTCellStrongSelectionChanged cellIndex: index event: event) ]]].
				
				