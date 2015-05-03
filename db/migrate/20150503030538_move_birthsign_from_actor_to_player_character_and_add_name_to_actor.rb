class MoveBirthsignFromActorToPlayerCharacterAndAddNameToActor < ActiveRecord::Migration
  def change
    remove_column :actors, :birthsign
    add_column :actors, :name, :string
    add_column :player_characters, :birthsign, :string
  end
end
