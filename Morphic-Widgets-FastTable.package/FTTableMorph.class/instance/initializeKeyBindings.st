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
	self 
		bindKeyCombination: Character home asKeyCombination
		toAction: [ selectionMode==#row
			ifTrue:[self selectRowIndex: 1 ]
			ifFalse:[self selectCellIndex: #(1 1)]].
	self 
		bindKeyCombination: Character end asKeyCombination
		toAction: [selectionMode==#row
			 ifTrue:[self selectRowIndex: self numberOfRows]
			ifFalse:[self selectCellIndex: (Array with:self numberOfRows with: self numberOfColumns)]].
	self 
		bindKeyCombination: PlatformSpecificKeyCombination sellectAll
		toAction: [ selectionMode==#row
			ifTrue:[self selectAllRowIndexes]
			ifFalse:[self selectAllCells ]].
	self 
		bindKeyCombination:  PlatformSpecificKeyCombination  edit     "editing works only on cell selection mode"
		toAction: [ :target :morph :event |self keyStrokeEdit: event ].
		
	