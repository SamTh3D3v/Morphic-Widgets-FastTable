accessing
prop3Column: column row: rowIndex
		^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) property3 ) allowEdit: true position: (Array with:column with: rowIndex)
	