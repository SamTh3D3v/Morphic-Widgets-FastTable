accessing
nameColumn: column row: rowIndex
	^ FTLabelCellMorph table: table content: ((self elementAt: rowIndex) name ) allowEdit: true position: (Array with:column with: rowIndex)