compiling
noteCompilationOfMethod: aCompiledMethod meta: isMeta
    
    isMeta ifTrue: [ ^self ].
    
    self installLinkOn: aCompiledMethod 