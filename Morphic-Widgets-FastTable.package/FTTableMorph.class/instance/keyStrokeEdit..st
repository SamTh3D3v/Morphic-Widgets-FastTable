as yet unclassified
keyStrokeEdit: event
"the keystoke edit is triggered by Ctrl+e, and it simply fires the StrongSelection Announcement, the announcement should be
handled when setting up the table "		
	| index|
	selectionMode == #row
	ifTrue:[index := self container rowIndexContainingPoint: event cursorPoint.
	index ifNotNil: [ 
		self doAnnounce: (FTStrongSelectionChanged rowIndex: index event: event) ]]
	ifFalse:[index := self container rowAndColumnIndexContainingPoint: event cursorPoint.
	index ifNotNil: [ 
		self doAnnounce: (FTCellStrongSelectionChanged cellIndex: index event: event) ]].
				
				