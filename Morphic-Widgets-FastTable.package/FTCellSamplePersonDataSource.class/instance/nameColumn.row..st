accessing
nameColumn: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) name ) allowEdit: true