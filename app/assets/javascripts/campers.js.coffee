jQuery ->
  $('#camper_brand_name').autocomplete
    source: $('#camper_brand_name').data('autocomplete-source')