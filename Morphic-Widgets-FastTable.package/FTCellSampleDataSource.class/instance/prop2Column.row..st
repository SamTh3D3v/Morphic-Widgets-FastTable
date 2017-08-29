accessing
prop2Column: column row: rowIndex
	^ FTLabelCellMorph table: table content: ((self elementAt: rowIndex) property2 ) allowEdit: false position: (Array with:column with: rowIndex)
