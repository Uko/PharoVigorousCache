scripts
reinstalVigorousCaching
	<script>

	self cleanupVigorousCaching.
	self methods do: [ :method |
		self installLinkOn: method ]