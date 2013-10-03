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