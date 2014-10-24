# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$(document).bind "ajaxSuccess", "form#new_debt", (event, xhr, settings) ->
	    $debt_form = $(event.data)
	    $error_container = $("#error_explanation", $debt_form)
	    $error_container_ul = $("ul", $error_container)

	    #reset form and fadeout
	    $("#new_debt")[0].reset()
	    $('form#new_debt').fadeOut(1000)

	    #display message and fadeout
	    $("<p>").html("Debt saved.").insertAfter($debt_form).delay(2000).fadeOut(1000)
	    if $("li", $error_container_ul).length
	      $("li", $error_container_ul).remove()
	      $error_container.hide()

	$(document).bind "ajaxError", "form#new_debt", (event, jqxhr, settings, exception) ->
		$debt_form = $(event.data)
		#remove the old errors
		$("#error_explanation ul").empty()
		$error_container = $("#error_explanation", $debt_form)
		$error_container_ul = $("ul", $error_container)
		$error_container.show()  if $error_container.is(":hidden")
		$.each jqxhr.responseJSON, (index, message) ->
			$("<li>").html(message).appendTo $error_container_ul

	$("#new_debt_link").click ->
		$('#new_debt').insertBefore($(this))
		$('#new_debt').fadeIn()
