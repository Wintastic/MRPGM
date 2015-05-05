$(document).ready ->
  $('.field').bind 'keyup change', updateAttributes
  updateAttributes()


updateAttributes = () ->
  race = $('#actor_race').val().toLowerCase()
  gender = if $('#actor_gender_female').is(':checked') then 'f' else 'm'
  favoured_attribute1 = $('#actor_favoured_attribute1').val().toLowerCase()
  favoured_attribute2 = $('#actor_favoured_attribute2').val().toLowerCase()
  $.ajax
    type: 'get'
    url: "/creators/calculate_attributes/"
    data:
      race: race
      gender: gender
      favoured_attribute1: favoured_attribute1
      favoured_attribute2: favoured_attribute2
    success: (data) ->
      attributes = JSON.parse(data)
      for attr of attributes
        $("td##{attr}-value").html(attributes[attr])

