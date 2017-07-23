accessing
cellColumn: column row: rowIndex 
	column id = '#' ifTrue: [ ^ FTCellMorph new addMorph: rowIndex asMorph ].
	column id = 'name' ifTrue: [ column property: #name. ^ self nameColumn: column row: rowIndex ].
	column id = 'dateOfBirth' ifTrue: [ column property: #dateOfBirth. ^ self dateOfBirthColumn: column row: rowIndex ].
	column id = 'gender' ifTrue: [ column property:#gender. ^ self genderColumn:column row: rowIndex ].
	
self error: 'Invalid column'