event handling
mouseMove: event
|rowI cellI|
"selection manupuLation"
self mouseMoveSelection ifTrue: [  "select cell when the mouseDown moves"
	
	self isRowSelectionMode
	ifTrue:[
	rowI := self container rowIndexContainingPoint: event cursorPoint.
	rowI isNil ifTrue:[^ self ].
	(self selectedRowIndexes includes: rowI)
		ifFalse: [ self selectRowIndex: rowI event: event ]
		ifTrue: [ needToggleAtMouseUp := true ].	"If the cell is selected we let the mouse up toggle to avoid any problem with the drag and drop"]
	ifFalse:[

			cellI := self container rowAndColumnIndexContainingPoint: event cursorPoint.
		   cellI first isNil ifTrue:[^ self ].
			(self selectedCellsIndexes includes: cellI)
		ifFalse: [self selectionStrategy selectCellIndex: cellI event: event.]
		ifTrue: [ needToggleAtMouseUp := true ].
			].	
	 ].

"Draging event manupulations"
	event isDraggingEvent ifFalse: [ ^ self ].
	event hand hasSubmorphs ifFalse: [ ^self ].
	(self wantsDroppedMorph: event hand submorphs first event: event) ifFalse: [ ^self ].
	
	(self container rowIndexContainingPoint: event position) 
		ifNotNil: [ :rowIndex | 
			self basicHighlightRowIndexes: { rowIndex }.
			self refresh ].
	
	(self container bounds containsPoint: event position) ifTrue: [ 
		(event position y <= (self container top + self autoScrollHeightLimit)) ifTrue: [ 
			^self verticalScrollBar scrollUp: 1
		].
		(event position y >= (self container bottom - self autoScrollHeightLimit)) ifTrue: [ 
			^self verticalScrollBar scrollDown: 1
		] 			
	]
