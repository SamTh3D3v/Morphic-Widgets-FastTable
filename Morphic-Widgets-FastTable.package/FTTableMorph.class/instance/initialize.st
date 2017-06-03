initialization
initialize 
	super initialize.
	showIndex := 0.
	showColumnHeaders := true.
	selectedRowIndexes := #().
	selectedCellsIndexes := #().
	highlightedRowIndexes := #().
	columns := #().
	needToggleAtMouseUp := false.
	selectionMode := self class defaultSelectionMode.
	self beNotResizable.
	self beSingleSelection.
	self enableSearch.
	self initializeScrollBars.
	self initializeContainer.
	self initializeKeyBindings.
	
	self resizeAllSubviews