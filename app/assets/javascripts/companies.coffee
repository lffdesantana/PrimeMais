# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#companies').dataTable

    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    bAutoWidth:  false
    bStateSave: true
    sWrapper: "dataTables_wrapper form-inline"
    sAjaxSource: $('#companies').data('source')
    oLanguage:{
      sUrl: "datatable_i18n"
    }
