accessing
allowSort
	allowSort ifNil: [^true]. "Allow sorting by default"
	^allowSort 