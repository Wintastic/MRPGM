module CreatorsHelper

  @agility_values = {altmer: [40, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 30], dunmer: [40, 40], imperial: [30, 30], khajiit: [50, 50], nord: [30, 30], orc: [35, 35], redguard: [40, 40]}
  @endurance_values = {altmer: [40, 30], argonian: [30, 30], bosmer: [30, 30], breton: [30, 30], dunmer: [40, 30], imperial: [40, 40], khajiit: [30, 40], nord: [50, 40], orc: [50, 50], redguard: [50, 50]}
  @intelligence_values = {altmer: [50, 50], argonian: [40, 50], bosmer: [40, 40], breton: [50, 50], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [30, 30], orc: [30, 40], redguard: [30, 30]}
  @luck_values = {altmer: [40, 40], argonian: [40, 40], bosmer: [40, 40], breton: [40, 40], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 40], nord: [40, 40], orc: [40, 40], redguard: [40, 40]}
  @personality_values = {altmer: [40, 40], argonian: [30, 30], bosmer: [40, 40], breton: [40, 40], dunmer: [30, 40], imperial: [50, 50], khajiit: [40, 40], nord: [30, 30], orc: [30, 25], redguard: [30, 40]}
  @speed_values = {altmer: [30, 40], argonian: [50, 40], bosmer: [50, 50], breton: [30, 40], dunmer: [50, 50], imperial: [40, 30], khajiit: [40, 40], nord: [40, 40], orc: [30, 30], redguard: [40, 40]}
  @strength_values = {altmer: [30, 30], argonian: [40, 40], bosmer: [30, 30], breton: [40, 30], dunmer: [40, 40], imperial: [40, 40], khajiit: [40, 30], nord: [50, 50], orc: [45, 45], redguard: [50, 40]}
  @willpower_values = {altmer: [40, 40], argonian: [30, 40], bosmer: [30, 30], breton: [50, 50], dunmer: [30, 30], imperial: [30, 40], khajiit: [30, 30], nord: [40, 50], orc: [50, 45], redguard: [30, 30]}

  def self.calculate_attribute(attribute, race, gender)
    case attribute.to_sym
      when :agility
        puts '1'
        puts @agility_values
        @agility_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :endurance
        @endurance_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :intelligence
        @intelligence_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :luck
        @luck_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :personality
        @personality_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :speed
        @speed_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :strength
        @strength_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :willpower
        @willpower_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :health
        endurance = @endurance_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        strength = @strength_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        (endurance + strength) / 2
      when :magicka
        @intelligence_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
      when :fatigue
        total = 0
        total += @agility_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        total += @endurance_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        total += @strength_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        total += @willpower_values[race.to_sym][gender.to_sym == :m ? 0 : 1]
        total
    end
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
