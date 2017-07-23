accessing
genderColumn: column row: rowIndex
	^ FTDropListCellMorph table:table datasource: #('male' 'female') selectedItem:((self elementAt: rowIndex) gender ) allowEdit: true