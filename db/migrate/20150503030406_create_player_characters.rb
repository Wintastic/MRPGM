class CreatePlayerCharacters < ActiveRecord::Migration
  def change
    create_table :player_characters do |t|
      t.string :specialization
      t.string :favoured_attribute1
      t.string :favoured_attribute2
      t.string :major_skill1
      t.string :major_skill2
      t.string :major_skill3
      t.string :major_skill4
      t.string :major_skill5
      t.string :minor_skill1
      t.string :minor_skill2
      t.string :minor_skill3
      t.string :minor_skill4
      t.string :minor_skill5

      t.timestamps
    end
  end
end
