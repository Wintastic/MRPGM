json.array!(@actors) do |actor|
  json.extract! actor, :id, :race, :gender, :level, :character_class, :health, :magicka, :fatigue, :encumbrance, :agility, :endurance, :intelligence, :luck, :personality, :speed, :strength, :willpower, :birthsign, :heavy_armour, :medium_armour, :spear, :acrobatics, :armourer, :axe, :blunt_weapon, :long_blade, :block, :light_armour, :marksman, :sneak, :athletics, :hand_to_hand, :short_blade, :unarmoured, :illusion, :mercantile, :speechcraft, :alchemy, :conjuration, :enchant, :security, :alteration, :destruction, :mysticism, :restoration, :fire_resist, :frost_resist, :poison_resist, :shock_resist, :magicka_resist, :disease_resist
  json.url actor_url(actor, format: :json)
end
