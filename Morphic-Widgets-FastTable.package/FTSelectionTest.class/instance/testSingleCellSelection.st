tests
testSingleCellSelection
|columnsCount rowsCount rand cell|
"Test whether selecting a single cell really add the cell index to the selected cells collection in the table "
	"enable cell's seletion mode and deselect all cells"
	table enableCellSelectionMode.
	table beSingleSelection.
	table deselectAllCells.
	"select a single cell randomly"	
	columnsCount := table columns size.
	rowsCount := table dataSource elements size.
	rand:=Random new.
	cell := Array with:(rand nextInt:rowsCount) with:(rand nextInt:columnsCount).
	table selectCellIndex: cell.  
	"assert:true, if the cell is really selected"

	self assert: table selectedCellsIndex = cell.