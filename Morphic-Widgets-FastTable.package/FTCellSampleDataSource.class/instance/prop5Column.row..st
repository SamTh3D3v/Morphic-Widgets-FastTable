accessing
prop5Column: column row: rowIndex
	^ FTDropListCellMorph table:table datasource: #('one' 'two' 'three' 'four' 'five') selectedItem:((self elementAt: rowIndex) property5 ) allowEdit: true position: (Array with:column with: rowIndex)
	