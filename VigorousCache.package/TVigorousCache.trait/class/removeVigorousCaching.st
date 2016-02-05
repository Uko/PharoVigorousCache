scripts
removeVigorousCaching
	<script>

	self cleanVigorousCache.
	self methods do: [ :method |
		method destroyTwin ]