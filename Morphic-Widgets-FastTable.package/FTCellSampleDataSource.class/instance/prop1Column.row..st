accessing
prop1Column: column row: rowIndex
	^ FTLabelCellMorph table: table content: ((self elementAt: rowIndex) property1 ) allowEdit: true position: (Array with:column with: rowIndex)
