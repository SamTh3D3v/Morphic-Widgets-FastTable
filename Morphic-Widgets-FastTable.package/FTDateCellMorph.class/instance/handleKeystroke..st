event handling
handleKeystroke: anEvent
| keyValue |
keyValue := anEvent keyValue.
keyValue = Character escape 
 ifTrue: [ self inform: 'got the focus' ] 