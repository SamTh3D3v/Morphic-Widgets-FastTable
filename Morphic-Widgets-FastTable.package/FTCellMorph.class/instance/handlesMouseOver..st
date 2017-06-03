event handling
handlesMouseOver: evt
table notNil
ifTrue: [ ^ table selectionMode == #column ].
^false
