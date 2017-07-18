accesing
distributionColumn: column row: rowIndex
	^ FTTextEditCellMorph table: table content: ((self elementAt: rowIndex) distribution ) allowEdit: false