instance creation
container: aTableContainerMorph top: aColumn bottom: otherColumn
	^ self basicNew 
		initializeContainer: aTableContainerMorph 
			top: aColumn 
			bottom: otherColumn;
		yourself