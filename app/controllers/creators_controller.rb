class CreatorsController < ApplicationController

  def player_character
    @player_character = PlayerCharacter.new
  end

  def calculate_attributes
    result = CreatorsHelper.calculate_attributes(params)
    render text: result
  end

end
