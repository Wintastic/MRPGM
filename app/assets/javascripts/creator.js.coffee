$(document).ready ->
  $('.field').bind 'keyup change', ->
    values = $('table.attributes td[id$=value]')
    for v in values
      attribute = $(v).attr('id').split('-')[0]
      race = $('#actor_race').val().toLowerCase()
      gender = if $('#actor_gender_female').is(':checked') then 'f' else 'm'
      updateValue(v, attribute, race, gender)

updateValue = (v, attribute, race, gender) ->
  $.ajax
    type: 'get'
    url: "/creators/calculate_attribute/"
    data:
      attribute: attribute
      race: race
      gender: gender
    success: (data) ->
      $(v).html(data)

