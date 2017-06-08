initialization
initializeKeyBindings
	"add keybindings used by table"
	self 
		bindKeyCombination: Character arrowUp shift | Character arrowUp asKeyCombination
		toAction: [ :target :morph :event | self keyStrokeArrowUp: event ].
	self 
		bindKeyCombination: Character arrowDown shift | Character arrowDown asKeyCombination
		toAction: [ :target :morph :event | self keyStrokeArrowDown: event ].
	self 
		bindKeyCombination: Character arrowLeft shift | Character arrowLeft asKeyCombination
		toAction: [ :target :morph :event | self keyStrokeArrowLeft: event ].
	self 
		bindKeyCombination: Character arrowRight shift | Character arrowRight asKeyCombination
		toAction: [ :target :morph :event | self keyStrokeArrowRight: event ].
	"self 
		bindKeyCombination: Character home  shift | Character home asKeyCombination
		toAction: [ :target :morph :event |self inform:'ok1'. self keysStrokeShiftHome: event ].
	self 
		bindKeyCombination: Character end  shift | Character end asKeyCombination
		toAction: [ :target :morph :event | self keysStrokeShiftEnd: event ]."
	self 
		bindKeyCombination: Character home asKeyCombination
		toAction: [ selectionMode==#row
			ifTrue:[self selectRowIndex: 1 ]
			ifFalse:[self selectCellIndex: (Array with:1 with:self selectedCellsIndex second)]].
	self 
		bindKeyCombination: Character end asKeyCombination
		toAction: [selectionMode==#row
			 ifTrue:[self selectRowIndex: self numberOfRows]
			ifFalse:[self selectCellIndex: (Array with:self numberOfRows with: self selectedCellsIndex second)]].
	self 
		bindKeyCombination: $a meta  
		toAction: [ selectionMode==#row
			ifTrue:[self selectAllRowIndexes]
			ifFalse:[self selectAllCells ]].