# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#invoice_name').typeahead [
    {
      name: 'name'
      remote: {
        url: '/clients.json?q=%QUERY'
      }
      valueKey: 'name'
    }
  ]
  $('.invoice-item-name').livequery (event) ->
    $(this).autocomplete
      source: "/invoice_items.json",
      minLength: 2,
      select: ( event, ui ) ->
        tbody = $(event.target).closest('tbody')
        $.each ui.item, (i, e) ->
          tbody.find("input[name$='[#{i}]']").val(e)

  $(document).on 'typeahead:selected', (event, data) ->
    if event.target.attr('id') == 'invoice_name'
      $('#invoice_client_id').val(data.id)
      $.each data, (i, e) ->
        $("#invoice_#{i}").val(e)
      $.each data.address, (i, e) ->
        $("#invoice_#{i}").val(e)
    else


  $('form').on 'click', '.remove_fields', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('tr').hide()
    event.preventDefault()

  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $("#items").append($(this).data('fields').replace(regexp, time))
    event.preventDefault()