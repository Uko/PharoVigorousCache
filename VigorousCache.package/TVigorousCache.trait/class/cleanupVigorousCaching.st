scripts
cleanupVigorousCaching
	<script>

	self methods do: [ :method |
		method cleanVigorousCache.
		method destroyTwin ]