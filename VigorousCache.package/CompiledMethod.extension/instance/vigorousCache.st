*vigorousCache
vigorousCache

	^ self
		propertyValueAt: #vigorousCache
		ifAbsent: [ 
			self
				propertyValueAt: #vigorousCache
				put: WeakIdentityKeyDictionary new ]