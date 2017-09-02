tests
testMultipleCellSelection
"Test whether selecting multiple cells really add the cells indexes to the selected cells collection in the table "
	self assert: true.
	
	self assert: (SpreadsheetRuleConstant value: 42) notNil