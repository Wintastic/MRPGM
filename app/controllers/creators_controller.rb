class CreatorsController < ApplicationController

  def player_character
    @player_character = PlayerCharacter.new
  end

  def calculate_character_stats
    result = CreatorsHelper.calculate_character_stats(params)
    render text: result
  end

end
