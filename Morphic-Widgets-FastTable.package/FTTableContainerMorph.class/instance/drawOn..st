drawing
drawOn: canvas
	| x y cellWidth cellHeight rowsToDisplay rowSubviews highligtedRowIndexes primarySelectionIndex primarySelectionCellIndex SelectedCellIndexes|
	
	super drawOn: canvas.
	self canRefreshValues ifFalse: [ ^ self ]. "Nothing to update yet"
	

	x := self left + self class rowLeftMargin.
	y := self top.	
	cellWidth := self width - self class rowLeftMargin.
	cellHeight := self owner rowHeight rounded. 
	highligtedRowIndexes := 
		self owner selectedRowIndexes, 
		self owner highlightedRowIndexes.
		
	SelectedCellIndexes := self owner selectedCellsIndexes.
	primarySelectionIndex := self owner selectedRowIndex.
	primarySelectionCellIndex := self owner selectedCellsIndex.

	
	"For some superweird reason, calling #calculateExposedRows here instead in #changed (where
	 it should be called) is 10x faster. Since the whole purpose of this component is speed, for 
	 now I'm calling it here and adding the #setNeedRecalculateRows mechanism. 
	 History, please forgive me."
	self updateAllRows.

	rowsToDisplay := self exposedRows.
	rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
	headerRow ifNotNil: [ 
		headerRow bounds: (self left@y extent: self width@cellHeight).
		y := y + cellHeight + self owner intercellSpacing y.		
		rowSubviews add: headerRow ].
	
	rowsToDisplay keysAndValuesDo: [ :rowIndex :row | | visibleHeight |
		visibleHeight := cellHeight min: (self bottom - y). 
		row bounds: (x@y extent: cellWidth@visibleHeight).
		y := y + visibleHeight + self owner intercellSpacing y.
		
		
		rowSubviews add: row.		
		(self owner selectionMode == #column)		 
		 ifTrue: [row submorphs withIndexDo: [ :each :columnIndex |
				 (SelectedCellIndexes includes: (Array with:rowIndex with:columnIndex)) 
					ifTrue: [ each columnSelectionColor: (self owner colorForSelection:(primarySelectionCellIndex first = rowIndex and:primarySelectionCellIndex second = columnIndex )) ]]]	
				ifFalse:[(highligtedRowIndexes includes: rowIndex) ifTrue: [ 
			row selectionColor: (self owner colorForSelection: primarySelectionIndex = rowIndex) ]]	
		].
	
	   
				
						
	submorphs := rowSubviews asArray.
	
	owner isResizable 
		ifTrue: [ self addResizeSplitters ].
	owner isRowResizable  
		ifTrue: [ self addResizeRowSplitters].
	

	needsRefreshExposedRows := false