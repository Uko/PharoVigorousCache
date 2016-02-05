*vigorousCache
cachedValueWithReceiver: aReceiver arguments: anArray
	"look for the receiver in the internal cache and return the associated value. Otherwise run and cache the value"
	
	
	anArray size isZero ifFalse: [ 
		^ self valueWithReceiver: aReceiver arguments: anArray ].
	
	^ self vigorousCache at: aReceiver ifAbsentPut: [ 
		self valueWithReceiver: aReceiver arguments: anArray ]
	