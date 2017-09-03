tests
testSingleRowSelection
"Test whether selecting a single row really add the row index to the selected rows collection in the table "
	|rowsCount rand row|
	table enableRowSelectionMode.
	table beSingleSelection.
	rowsCount := table dataSource elements size.
	rand := Random new.
	row := (rand nextInt: rowsCount).
	table selectRowIndex: row.  
	self assert: table selectedRowIndex = row.