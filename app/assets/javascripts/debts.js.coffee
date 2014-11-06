# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$("#new_debt_theyoweyou_link").click ->
		$('#new_debt').insertBefore($(this))
		$('#new_debt').fadeIn()
	$("#new_debt_youowethem_link").click ->
		$('#new_debt').insertBefore($(this))
		$('#new_debt #debt_youtothem').val('true') 
		$('#new_debt').fadeIn()
