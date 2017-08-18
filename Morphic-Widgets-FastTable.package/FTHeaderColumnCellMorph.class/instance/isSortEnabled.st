accessing
isSortEnabled
     self table selectionMode =#row ifTrue:[^false].
	^self column isSortActivated