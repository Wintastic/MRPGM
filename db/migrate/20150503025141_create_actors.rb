class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :race
      t.string :gender
      t.integer :level
      t.string :character_class
      t.integer :health
      t.integer :magicka
      t.integer :fatigue
      t.integer :encumbrance
      t.integer :agility
      t.integer :endurance
      t.integer :intelligence
      t.integer :luck
      t.integer :personality
      t.integer :speed
      t.integer :strength
      t.integer :willpower
      t.string :birthsign
      t.integer :heavy_armour
      t.integer :medium_armour
      t.integer :spear
      t.integer :acrobatics
      t.integer :armourer
      t.integer :axe
      t.integer :blunt_weapon
      t.integer :long_blade
      t.integer :block
      t.integer :light_armour
      t.integer :marksman
      t.integer :sneak
      t.integer :athletics
      t.integer :hand_to_hand
      t.integer :short_blade
      t.integer :unarmoured
      t.integer :illusion
      t.integer :mercantile
      t.integer :speechcraft
      t.integer :alchemy
      t.integer :conjuration
      t.integer :enchant
      t.integer :security
      t.integer :alteration
      t.integer :destruction
      t.integer :mysticism
      t.integer :restoration
      t.integer :fire_resist
      t.integer :frost_resist
      t.integer :poison_resist
      t.integer :shock_resist
      t.integer :magicka_resist
      t.integer :disease_resist

      t.timestamps
    end
  end
end
