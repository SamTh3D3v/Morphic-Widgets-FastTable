accesing
cellColumn: column row: rowIndex 
	column id = '#' ifTrue: [ ^ FTCellMorph new addMorph: rowIndex asMorph ].
	column id = 'distribution' ifTrue: [ column property: #distribution. ^ self distributionColumn: column row: rowIndex ].
	column id = 'x86' ifTrue: [ column property: #x86. ^ self x86Column: column row: rowIndex ].
	column id = 'x8664' ifTrue: [ column property: #x8664. ^ self x8664Column: column row: rowIndex ].
	column id = 'ia64' ifTrue: [ column property: #ia64. ^ self ia64Column: column row: rowIndex ].
	column id = 'ppc' ifTrue: [ column property: #ppc. ^ self ppcColumn: column row: rowIndex ].
	column id = 'ppc64' ifTrue: [ column property: #ppc64. ^ self ppc64Column: column row: rowIndex ].
	column id = 'sparc32' ifTrue: [ column property: #sparc32. ^ self sparc32Column: column row: rowIndex ].
	column id = 'sparc64' ifTrue: [ column property: #sparc64. ^ self ppc64Column: column row: rowIndex ].
	column id = 'arm' ifTrue: [ column property: #arm. ^ self armColumn: column row: rowIndex ].
	
self error: 'Invalid column'