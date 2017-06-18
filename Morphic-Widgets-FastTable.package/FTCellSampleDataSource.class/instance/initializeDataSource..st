initialization
initializeDataSource: anInterger
	self initialize.
	self elements: (self createSampleModels: anInterger)
