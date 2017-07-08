accessing
cellColumn: column row: rowIndex 
	column id = '#' ifTrue: [ ^ FTCellMorph new addMorph: rowIndex asMorph ].
	column id = 'column1' ifTrue: [ ^ self prop1Column: column row: rowIndex ].
	column id = 'column2' ifTrue: [ column property: #property2. ^ self prop2Column: column row: rowIndex ].
	column id = 'column3' ifTrue: [ column property: #property3. ^ self prop3Column: column row: rowIndex ].
	column id = 'column4' ifTrue: [ column property: #property4. ^ self prop4Column: column row: rowIndex ].
	column id = 'column5' ifTrue: [ column property: #property5. ^ self prop5Column: column row: rowIndex ].
	column id = 'column6' ifTrue: [ column property: #property6. ^ self prop6Column: column row: rowIndex ].
	
self error: 'Invalid column'