accessing
allowEdit: aBool
	allowEdit := aBool.
	calendar notNil ifTrue:[aBool ifTrue: [self calendar delete]]
	