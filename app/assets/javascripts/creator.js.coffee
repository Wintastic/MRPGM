$(document).ready ->
  if $('.character-creator').length == 1
    $('.field').bind 'keyup change', updateAttributes
    updateAttributes()


updateAttributes = () ->
  race = $('#actor_race').val().toLowerCase()
  gender = if $('#actor_gender_female').is(':checked') then 'f' else 'm'
  specialization = $('#actor_specialization').val().toLowerCase()
  favoured_attribute1 = $('#actor_favoured_attribute1').val().toLowerCase()
  favoured_attribute2 = $('#actor_favoured_attribute2').val().toLowerCase()
  major_skill1 = $('#actor_major_skill1').val().toLowerCase().replace(' ', '_')
  major_skill2 = $('#actor_major_skill2').val().toLowerCase().replace(' ', '_')
  major_skill3 = $('#actor_major_skill3').val().toLowerCase().replace(' ', '_')
  major_skill4 = $('#actor_major_skill4').val().toLowerCase().replace(' ', '_')
  major_skill5 = $('#actor_major_skill5').val().toLowerCase().replace(' ', '_')
  minor_skill1 = $('#actor_minor_skill1').val().toLowerCase().replace(' ', '_')
  minor_skill2 = $('#actor_minor_skill2').val().toLowerCase().replace(' ', '_')
  minor_skill3 = $('#actor_minor_skill3').val().toLowerCase().replace(' ', '_')
  minor_skill4 = $('#actor_minor_skill4').val().toLowerCase().replace(' ', '_')
  minor_skill5 = $('#actor_minor_skill5').val().toLowerCase().replace(' ', '_')

  $.ajax
    type: 'get'
    url: "/creators/calculate_character_stats/"
    data:
      race: race
      gender: gender
      specialization: specialization
      favoured_attribute1: favoured_attribute1
      favoured_attribute2: favoured_attribute2
      major_skill1: major_skill1
      major_skill2: major_skill2
      major_skill3: major_skill3
      major_skill4: major_skill4
      major_skill5: major_skill5
      minor_skill1: minor_skill1
      minor_skill2: minor_skill2
      minor_skill3: minor_skill3
      minor_skill4: minor_skill4
      minor_skill5: minor_skill5
    success: (data) ->
      stats = JSON.parse(data)
      attributes = stats.attributes
      skills = stats.skills
      for attr of attributes
        $("td##{attr}-value").html(attributes[attr])
        $("td##{attr}-value").css("color", getAttributeColor(attr, attributes[attr]))
      for skill of skills
        $("td##{skill}-value").html(skills[skill])
        $("td##{skill}-value").css("color", getSkillColor(skill, skills[skill]))

getAttributeColor = (attr, value) ->
  if(attr == "fatigue" || value == 40)
    "black"
  else if (value < 40)
    "red"
  else if (value > 40)
    "green"
  else
    "black"

getSkillColor = (skill, value) ->
  if (value > 5 && value <= 10)
    "black"
  else if (value == 5)
    "red"
  else if (value > 10)
    "green"
  else
    "black"