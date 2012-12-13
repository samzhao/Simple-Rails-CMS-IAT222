$ ->
	$(document.links).filter(->
		@hostname isnt window.location.hostname
	).attr 'target', '_blank'