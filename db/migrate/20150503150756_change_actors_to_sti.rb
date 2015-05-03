class ChangeActorsToSti < ActiveRecord::Migration
  def change
    drop_table :player_characters

    add_column :actors, :type, :string

    add_column :actors, :specialization, :string
    add_column :actors, :birthsign, :string
    add_column :actors, :favoured_attribute1, :string
    add_column :actors, :favoured_attribute2, :string
    add_column :actors, :major_skill1, :string
    add_column :actors, :major_skill2, :string
    add_column :actors, :major_skill3, :string
    add_column :actors, :major_skill4, :string
    add_column :actors, :major_skill5, :string
    add_column :actors, :minor_skill1, :string
    add_column :actors, :minor_skill2, :string
    add_column :actors, :minor_skill3, :string
    add_column :actors, :minor_skill4, :string
    add_column :actors, :minor_skill5, :string
  end
end
