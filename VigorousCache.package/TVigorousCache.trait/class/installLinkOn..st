actions
installLinkOn: aCompiledMethod
	<skipVigirousCache>

	| link |

	self assert: [ aCompiledMethod methodClass == self ].
	
	(aCompiledMethod hasPragmaNamed: self skipCachePragma) ifTrue: [ ^ self ].
	
	link := MetaLink new
   		metaObject: aCompiledMethod;
   		selector: #cachedValueWithReceiver:arguments:;
		arguments: #(receiver arguments);
   		control: #instead.
	aCompiledMethod ast link: link.