module CreatorsHelper

  @agility_values = {altmer: [40, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 30], dunmer: [40, 40], imperial: [30, 30], khajiit: [50, 50], nord: [30, 30], orc: [35, 35], redguard: [40, 40]}
  @endurance_values = {altmer: [40, 30], argonian: [30, 30], bosmer: [30, 30], breton: [30, 30], dunmer: [40, 30], imperial: [40, 40], khajiit: [30, 40], nord: [50, 40], orc: [50, 50], redguard: [50, 50]}
  @intelligence_values = {altmer: [50, 50], argonian: [40, 50], bosmer: [40, 40], breton: [50, 50], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [30, 30], orc: [30, 40], redguard: [30, 30]}
  @luck_values = {altmer: [40, 40], argonian: [40, 40], bosmer: [40, 40], breton: [40, 40], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [40, 40], orc: [40, 40], redguard: [40, 40]}
  @personality_values = {altmer: [40, 40], argonian: [30, 30], bosmer: [40, 40], breton: [40, 40], dunmer: [30, 40], imperial: [50, 50], khajiit: [40, 40], nord: [30, 30], orc: [30, 25], redguard: [30, 40]}
  @speed_values = {altmer: [30, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 40], dunmer: [50, 50], imperial: [40, 30], khajiit: [40, 40], nord: [40, 40], orc: [30, 30], redguard: [40, 40]}
  @strength_values = {altmer: [30, 30], argonian: [40, 40], bosmer: [30, 30], breton: [40, 30], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 30], nord: [50, 50], orc: [45, 45], redguard: [50, 40]}
  @willpower_values = {altmer: [40, 40], argonian: [30, 40], bosmer: [30, 30], breton: [50, 50], dunmer: [30, 30], imperial: [30, 40], khajiit: [30, 30], nord: [40, 50], orc: [50, 45], redguard: [30, 30]}

  @acrobatics_values = {khajiit: 15, bosmer: 5}
  @alchemy_values = {altmer: 10, argonian: 5, bosmer: 5, breton: 5}
  @alteration_values = {altmer: 5, breton: 5}
  @armourer_values = {orc: 10}
  @athletics_values = {argonian: 15, dunmer: 5, khajiit: 5, redguard: 5}
  @axe_values = {nord: 10, orc: 5, redguard: 5}
  @block_values = {orc: 10}
  @blunt_weapon_values = {nord: 10, imperial: 5, redguard: 5}
  @conjuration_values = {breton: 10, altmer: 5}
  @destruction_values = {altmer: 10, dunmer: 10}
  @enchant_values = {altmer: 10}
  @hand_to_hand_values = {imperial: 5, khajiit: 5}
  @heavy_armour_values = {orc: 10, nord: 5, redguard: 5}
  @illusion_values = {altmer: 5, argonian: 5, breton: 5}
  @light_armour_values = {bosmer: 10, dunmer: 5, imperial: 5, khajiit: 5}
  @long_blade_values = {redguard: 15, imperial: 10, dunmer: 5, nord: 5}
  @marksman_values = {bosmer: 15, dunmer: 5}
  @medium_armour_values = {nord: 10, orc: 5, argonian: 5, redguard: 5}
  @mercantile_values = {imperial: 10}
  @mysticism_values = {breton: 10, argonian: 5, dunmer: 5}
  @restoration_values = {breton: 10}
  @security_values = {khajiit: 5}
  @short_blade_values = {dunmer: 10, khajiit: 5, redguard: 5}
  @sneak_values = {bosmer: 10, khajiit: 5}
  @spear_values = {argonian: 5, nord: 5}
  @speechcraft_values = {imperial: 10}
  @unarmoured_values = {argonian: 5}

  def self.calculate_character_stats(params)
    race = params[:race].to_sym
    gender = params[:gender].to_sym
    specialization = params[:specialization].to_sym
    favoured_attribute1 = params[:favoured_attribute1].to_sym
    favoured_attribute2 = params[:favoured_attribute2].to_sym
    major_skill1 = params[:major_skill1].to_sym
    major_skill2 = params[:major_skill2].to_sym
    major_skill3 = params[:major_skill3].to_sym
    major_skill4 = params[:major_skill4].to_sym
    major_skill5 = params[:major_skill5].to_sym
    minor_skill1 = params[:minor_skill1].to_sym
    minor_skill2 = params[:minor_skill2].to_sym
    minor_skill3 = params[:minor_skill3].to_sym
    minor_skill4 = params[:minor_skill4].to_sym
    minor_skill5 = params[:minor_skill5].to_sym

    attributes = calculate_attributes(race, gender, favoured_attribute1, favoured_attribute2)

    skills = calculate_skills(race, specialization, major_skill1, major_skill2, major_skill3, major_skill4, major_skill5, minor_skill1, minor_skill2, minor_skill3, minor_skill4, minor_skill5)

    {attributes: attributes, skills: skills}.to_json
  end

  def self.calculate_attributes(race, gender, favoured_attribute1, favoured_attribute2)
    agility = @agility_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :agility || favoured_attribute2 == :agility ? 10 : 0)
    endurance = @endurance_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :endurance || favoured_attribute2 == :endurance ? 10 : 0)
    intelligence = @intelligence_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :intelligence || favoured_attribute2 == :intelligence ? 10 : 0)
    luck = @luck_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :luck || favoured_attribute2 == :luck ? 10 : 0)
    personality = @personality_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :personality || favoured_attribute2 == :personality ? 10 : 0)
    speed = @speed_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :speed || favoured_attribute2 == :speed ? 10 : 0)
    strength = @strength_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :strength || favoured_attribute2 == :strength ? 10 : 0)
    willpower = @willpower_values[race][gender == :m ? 0 : 1] + (favoured_attribute1 == :willpower || favoured_attribute2 == :willpower ? 10 : 0)
    health = (endurance + strength) / 2
    magicka = intelligence
    fatigue = agility + endurance + strength + willpower

    {agility: agility, endurance: endurance, intelligence: intelligence, luck: luck, personality: personality,
     speed: speed, strength: strength, willpower: willpower, health: health, magicka: magicka, fatigue: fatigue}
  end

  def self.calculate_skills(race, specialization, major_skill1, major_skill2, major_skill3, major_skill4, major_skill5, minor_skill1, minor_skill2, minor_skill3, minor_skill4, minor_skill5)
    major_skills = [major_skill1, major_skill2, major_skill3, major_skill4, major_skill5]
    minor_skills = [minor_skill1, minor_skill2, minor_skill3, minor_skill4, minor_skill5]

    acrobatics = 5 + (@acrobatics_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :acrobatics) ? 15 : 0) + ((minor_skills.include? :acrobatics) ? 5 : 0)
    alchemy = 5 + (@alchemy_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :alchemy) ? 15 : 0) + ((minor_skills.include? :alchemy) ? 5 : 0)
    alteration = 5 + (@alteration_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :alteration) ? 15 : 0) + ((minor_skills.include? :alteration) ? 5 : 0)
    armourer = 5 + (@armourer_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :armourer) ? 15 : 0) + ((minor_skills.include? :armourer) ? 5 : 0)
    athletics = 5 + (@athletics_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :athletics) ? 15 : 0) + ((minor_skills.include? :athletics) ? 5 : 0)
    axe = 5 + (@axe_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :axe) ? 15 : 0) + ((minor_skills.include? :axe) ? 5 : 0)
    block = 5 + (@block_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :block) ? 15 : 0) + ((minor_skills.include? :block) ? 5 : 0)
    blunt_weapon = 5 + (@blunt_weapon_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :blunt_weapon) ? 15 : 0) + ((minor_skills.include? :blunt_weapon) ? 5 : 0)
    conjuration = 5 + (@conjuration_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :conjuration) ? 15 : 0) + ((minor_skills.include? :conjuration) ? 5 : 0)
    destruction = 5 + (@destruction_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :destruction) ? 15 : 0) + ((minor_skills.include? :destruction) ? 5 : 0)
    enchant = 5 + (@enchant_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :enchant) ? 15 : 0) + ((minor_skills.include? :enchant) ? 5 : 0)
    hand_to_hand = 5 + (@hand_to_hand_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :hand_to_hand) ? 15 : 0) + ((minor_skills.include? :hand_to_hand) ? 5 : 0)
    heavy_armour = 5 + (@heavy_armour_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :heavy_armour) ? 15 : 0) + ((minor_skills.include? :heavy_armour) ? 5 : 0)
    illusion = 5 + (@illusion_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :illusion) ? 15 : 0) + ((minor_skills.include? :illusion) ? 5 : 0)
    light_armour = 5 + (@light_armour_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :light_armour) ? 15 : 0) + ((minor_skills.include? :light_armour) ? 5 : 0)
    long_blade = 5 + (@long_blade_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :long_blade) ? 15 : 0) + ((minor_skills.include? :long_blade) ? 5 : 0)
    marksman = 5 + (@marksman_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :marksman) ? 15 : 0) + ((minor_skills.include? :marksman) ? 5 : 0)
    medium_armour = 5 + (@medium_armour_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :medium_armour) ? 15 : 0) + ((minor_skills.include? :medium_armour) ? 5 : 0)
    mercantile = 5 + (@mercantile_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :mercantile) ? 15 : 0) + ((minor_skills.include? :mercantile) ? 5 : 0)
    mysticism = 5 + (@mysticism_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :mysticism) ? 15 : 0) + ((minor_skills.include? :mysticism) ? 5 : 0)
    restoration = 5 + (@restoration_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :restoration) ? 15 : 0) + ((minor_skills.include? :restoration) ? 5 : 0)
    security = 5 + (@security_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :security) ? 15 : 0) + ((minor_skills.include? :security) ? 5 : 0)
    short_blade = 5 + (@short_blade_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :short_blade) ? 15 : 0) + ((minor_skills.include? :short_blade) ? 5 : 0)
    sneak = 5 + (@sneak_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :sneak) ? 15 : 0) + ((minor_skills.include? :sneak) ? 5 : 0)
    spear = 5 + (@spear_values[race] || 0) + (specialization == :combat ? 5 : 0) + ((major_skills.include? :spear) ? 15 : 0) + ((minor_skills.include? :spear) ? 5 : 0)
    speechcraft = 5 + (@speechcraft_values[race] || 0) + (specialization == :stealth ? 5 : 0) + ((major_skills.include? :speechcraft) ? 15 : 0) + ((minor_skills.include? :speechcraft) ? 5 : 0)
    unarmoured = 5 + (@unarmoured_values[race] || 0) + (specialization == :magic ? 5 : 0) + ((major_skills.include? :unarmoured) ? 15 : 0) + ((minor_skills.include? :unarmoured) ? 5 : 0)

    {acrobatics: acrobatics, alchemy: alchemy, alteration: alteration, armourer: armourer, athletics: athletics, axe: axe,
     block: block, blunt_weapon: blunt_weapon, conjuration: conjuration, destruction: destruction, enchant: enchant,
     hand_to_hand: hand_to_hand, heavy_armour: heavy_armour, illusion: illusion, light_armour: light_armour,
     long_blade: long_blade, marksman: marksman, medium_armour: medium_armour, mercantile: mercantile,
     mysticism: mysticism, restoration: restoration, security: security, short_blade: short_blade, sneak: sneak,
     spear: spear, speechcraft: speechcraft, unarmoured: unarmoured}
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

  def get_combat_skills
    %w(armourer athletics axe block blunt_weapon heavy_armour long_blade medium_armour spear)
  end

  def get_magic_skills
    %w(alchemy alteration conjuration destruction enchant illusion mysticism restoration unarmoured)
  end

  def get_stealth_skills
    %w(acrobatics hand_to_hand light_armour marksman mercantile security short_blade sneak speechcraft)
  end

end
