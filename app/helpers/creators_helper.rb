module CreatorsHelper

  @agility_values = {altmer: [40, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 30], dunmer: [40, 40], imperial: [30, 30], khajiit: [50, 50], nord: [30, 30], orc: [35, 35], redguard: [40, 40]}
  @endurance_values = {altmer: [40, 30], argonian: [30, 30], bosmer: [30, 30], breton: [30, 30], dunmer: [40, 30], imperial: [40, 40], khajiit: [30, 40], nord: [50, 40], orc: [50, 50], redguard: [50, 50]}
  @intelligence_values = {altmer: [50, 50], argonian: [40, 50], bosmer: [40, 40], breton: [50, 50], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [30, 30], orc: [30, 40], redguard: [30, 30]}
  @luck_values = {altmer: [40, 40], argonian: [40, 40], bosmer: [40, 40], breton: [40, 40], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [40, 40], orc: [40, 40], redguard: [40, 40]}
  @personality_values = {altmer: [40, 40], argonian: [30, 30], bosmer: [40, 40], breton: [40, 40], dunmer: [30, 40], imperial: [50, 50], khajiit: [40, 40], nord: [30, 30], orc: [30, 25], redguard: [30, 40]}
  @speed_values = {altmer: [30, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 40], dunmer: [50, 50], imperial: [40, 30], khajiit: [40, 40], nord: [40, 40], orc: [30, 30], redguard: [40, 40]}
  @strength_values = {altmer: [30, 30], argonian: [40, 40], bosmer: [30, 30], breton: [40, 30], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 30], nord: [50, 50], orc: [45, 45], redguard: [50, 40]}
  @willpower_values = {altmer: [40, 40], argonian: [30, 40], bosmer: [30, 30], breton: [50, 50], dunmer: [30, 30], imperial: [30, 40], khajiit: [30, 30], nord: [40, 50], orc: [50, 45], redguard: [30, 30]}

  def self.calculate_attributes(params)
    race = params[:race].to_sym
    gender = params[:gender].to_sym
    favoured_attribute1 = params[:favoured_attribute1].to_sym
    favoured_attribute2 = params[:favoured_attribute2].to_sym

    agility = @agility_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :agility || favoured_attribute2 == :agility ? 5 : 0)
    endurance = @endurance_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :endurance || favoured_attribute2 == :endurance ? 5 : 0)
    intelligence = @intelligence_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :intelligence || favoured_attribute2 == :intelligence ? 5 : 0)
    luck = @luck_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :luck || favoured_attribute2 == :luck ? 5 : 0)
    personality = @personality_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :personality || favoured_attribute2 == :personality ? 5 : 0)
    speed = @speed_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :speed || favoured_attribute2 == :speed ? 5 : 0)
    strength = @strength_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :strength || favoured_attribute2 == :strength ? 5 : 0)
    willpower = @willpower_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :willpower || favoured_attribute2 == :willpower ? 5 : 0)
    health = (endurance + strength) / 2
    magicka = intelligence
    fatigue = agility + endurance + strength + willpower

    {agility: agility, endurance: endurance, intelligence: intelligence, luck: luck, personality: personality,
     speed: speed, strength: strength, willpower: willpower, health: health, magicka: magicka, fatigue: fatigue}.to_json
  end

  def get_races
    %w(altmer argonian bosmer breton dunmer imperial khajiit nord orc redguard)
  end

  def get_specializations
    %w(combat stealth magic)
  end

  def get_attributes
    %w(strength intelligence willpower agility speed endurance personality luck)
  end

  def get_skills
    %w(armourer athletics axe block blunt_weapon heavy_armour long_blade medium_armour spear alchemy alteration conjuration destruction enchant illusion mysticism restoration unarmoured acrobatics hand_to_hand light_armour marksman mercantile security short_blade sneak speechcraft)
  end

  def get_birthsigns
    %w(the_warrior the_mage the_thief the_serpent the_lady the_steed the_lord the_apprentice the_atronach the_ritual the_lover the_shadow the_tower)
  end

end
