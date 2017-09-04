tests
testMultipleRowSelection
"Test whether selecting multiple rows really add the rows indexes to the selected rows collection in the table "
	|rowsCount rand rows|
	table enableRowSelectionMode.
	table beMultipleSelection.
	rowsCount := table dataSource elements size.
	rand := Random new.
	rows := Array 	with:(rand nextInt: rowsCount)
	 					with:(rand nextInt: rowsCount)
	 					with:(rand nextInt: rowsCount)
	 					with:(rand nextInt: rowsCount).
	table selectRowIndexes: rows.  
	self assert: table selectedRowIndexes size > 1.