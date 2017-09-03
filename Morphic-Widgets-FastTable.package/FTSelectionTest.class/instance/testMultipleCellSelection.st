tests
testMultipleCellSelection
"Test whether selecting multiple cells really add the cells indexes to the selected cells collection in the table "
	|columnsCount rowsCount rand cellsArray|
	"enable cell's seletion mode and deselect all cells"
	table enableCellSelectionMode.
	table deselectAllCells.
	"select a single cell randomly"	
	columnsCount := table columns size.
	rowsCount := table dataSource elements size.
	rand:=Random new.
	cellsArray := Array
                 with: (Array with:(rand nextInt:rowsCount) with:(rand nextInt:columnsCount))
                 with: (Array with:(rand nextInt:rowsCount) with:(rand nextInt:columnsCount))
                 with: (Array with:(rand nextInt:rowsCount) with:(rand nextInt:columnsCount))
                 with: (Array with:(rand nextInt:rowsCount) with:(rand nextInt:columnsCount)).
	table selectCellIndexes: cellsArray.  
	"assert:true, if the cell is really selected"

	self assert: table selectedCellsIndexes size > 1.