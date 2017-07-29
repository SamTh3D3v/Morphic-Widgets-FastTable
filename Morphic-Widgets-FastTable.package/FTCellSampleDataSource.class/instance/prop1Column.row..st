accessing
prop1Column: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property1 ) allowEdit: true
