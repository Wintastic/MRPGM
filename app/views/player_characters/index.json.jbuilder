json.array!(@player_characters) do |player_character|
  json.extract! player_character, :id, :specialization, :favoured_attribute1, :favoured_attribute2, :major_skill1, :major_skill2, :major_skill3, :major_skill4, :major_skill5, :minor_skill1, :minor_skill2, :minor_skill3, :minor_skill4, :minor_skill5
  json.url player_character_url(player_character, format: :json)
end
