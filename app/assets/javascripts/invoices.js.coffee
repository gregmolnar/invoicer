# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#invoice_client').typeahead [
    {
      name: 'name'
      remote: {
        url: '/clients.json?q=%QUERY'
      }
      valueKey: 'name'
    }
  ]
  $(document).on 'typeahead:selected', (event, data) ->
    $.each data, (i, e) ->
      $("#invoice_#{i}").val(e)

  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('tr').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $("#items").append($(this).data('fields').replace(regexp, time))
    event.preventDefault()