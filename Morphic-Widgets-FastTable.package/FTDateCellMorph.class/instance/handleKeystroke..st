event handling
handleKeystroke: anEvent
| keyValue |
self inform: 'in'.
keyValue := anEvent keyValue.
keyValue = Character escape 
 ifTrue: [ self inform: 'got the focus' ] 