accessing
cellColumn: column row: rowIndex 
	column id = '#' ifTrue: [ ^ FTCellMorph new addMorph: rowIndex asMorph ].
	column id = 'column1' ifTrue: [ ^ self prop1Column: column row: rowIndex ].
	column id = 'column2' ifTrue: [ ^ self prop2Column: column row: rowIndex ].
	column id = 'column3' ifTrue: [ ^ self prop3Column: column row: rowIndex ].
	
self error: 'Invalid column'