private
populataTheTable 
	|coll|
	coll := OrderedCollection new.
	coll add: ( FTSampleArchitecture distribution:'Alpine Linux' x86:true x8664:true	ia64:false ppc:false ppc64:false sparc32:false	sparc64:false	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'Arch Linux' x86:true x8664:true	ia64:false ppc:true ppc64:false sparc32:false	sparc64:false	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'CRUX' x86:true x8664:true	ia64:false ppc:true ppc64:false sparc32:false	sparc64:false	arm:false).
	coll add: ( FTSampleArchitecture distribution:'Debian' x86:true x8664:true	ia64:true ppc:true ppc64:true sparc32:true	sparc64:true	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'Fedora' x86:true x8664:true	ia64:true ppc:true ppc64:true sparc32:false	sparc64:true	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'Gentoo' x86:true x8664:true	ia64:true ppc:true ppc64:true sparc32:true	sparc64:true	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'Kali Linux' x86:true x8664:true	ia64:false ppc:false ppc64:false sparc32:false	sparc64:false	arm:true) .
	coll add: ( FTSampleArchitecture distribution:'Manjaro Linux' x86:true x8664:true	ia64:false ppc:false ppc64:false sparc32:false	sparc64:false	arm:true) .		
	coll add: ( FTSampleArchitecture distribution:'Oracle Linux' x86:true x8664:true	ia64:true ppc:false ppc64:false sparc32:false	sparc64:false	arm:false) .		
	coll add: ( FTSampleArchitecture distribution:'Ubuntu' x86:true x8664:true	ia64:false ppc:true ppc64:false sparc32:false	sparc64:false	arm:true) .	
	^coll