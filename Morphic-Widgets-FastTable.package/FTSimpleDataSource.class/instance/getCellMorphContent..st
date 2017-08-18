private 
getCellMorphContent: column
	column isSortActivated ifFalse: [ ^ column id asStringMorph ]
	ifTrue:[ 
		|trg pane|
pane := Morph new.
pane layoutPolicy: TableLayout new. 
pane listDirection: #rightToLeft. 
pane hResizing: #shrinkWrap.
pane vResizing: #shrinkWrap.
pane layoutInset: 5@2. 
pane  cellInset:5@0.
pane color: Color transparent.
column isColumnOrderedFromGreatest ifTrue: [ trg:= (Smalltalk ui icons 
iconNamed: #arrowDown) asMorph ].
column isColumnOrderedFromLeast  ifTrue: [ trg:= (Smalltalk ui icons 
iconNamed: #arrowUp) asMorph ].


pane addMorph: trg.
pane addMorph: column id asStringMorph.
^ pane ]
	