accessing
allowSort
     self table selectionMode =#row ifTrue:[^false].
	allowSort ifNil: [^true]. "Allow sorting by default"
	^allowSort 