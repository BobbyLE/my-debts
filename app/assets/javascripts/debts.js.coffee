# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$("#new_debt_link").click ->
		$('#new_debt').insertBefore($(this))
		$('#new_debt').fadeIn()
