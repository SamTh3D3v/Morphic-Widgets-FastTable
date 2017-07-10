adding
addCellEditingEvents: aCellMorph at:index
"View a floatting editor to edit the content of a cell"
|textEditor|

aCellMorph allowEdit ifFalse: [ ^self ].
	textEditor := RubFloatingEditorBuilder new
					customizeEditorWith: [ :editor | 
						editor scrollbarsShowNever.
						editor bounds: (aCellMorph bounds insetBy: (Margin left: -2 top: 0 right: 0 bottom: 0  ))
					];
				withEditedContentsDo: [ :editedContents | 
					(self dataSource elements at: index first) instVarAt:index second put: editedContents asString.
					self dataSource table refresh].
				textEditor openEditorWithContents: ((ds elements at: index first)  instVarAt: index second).