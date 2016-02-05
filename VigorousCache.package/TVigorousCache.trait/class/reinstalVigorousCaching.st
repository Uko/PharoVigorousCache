scripts
reinstalVigorousCaching
	<script>

	self methods do: [ :method |
		method destroyTwin.
		self installLinkOn: method ]