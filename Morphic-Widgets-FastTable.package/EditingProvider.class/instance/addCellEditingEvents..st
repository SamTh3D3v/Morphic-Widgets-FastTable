adding
addCellEditingEvents:index
"View a floatting editor to edit the content of a cell (index)"
|textEditor cellMorph|
cellMorph := ds table visibleCellMorphAtIndex: index.	
cellMorph hasEditingProvider ifTrue: [ ^self ].
cellMorph allowEdit ifFalse: [ ^self ].
	textEditor := RubFloatingEditorBuilder new
					customizeEditorWith: [ :editor | 
						editor scrollbarsShowNever.
						editor bounds: (cellMorph bounds insetBy: (Margin left: -2 top: 0 right: 0 bottom: 0  ))
					];
				withEditedContentsDo: [ :editedContents | 
					(self dataSource elements at: index first) instVarAt:index second put: editedContents asString.
					self dataSource table refresh].
				textEditor openEditorWithContents: ((ds elements at: index first)  instVarAt: index second).