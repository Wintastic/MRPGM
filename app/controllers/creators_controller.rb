class CreatorsController < ApplicationController

  def player_character
    @player_character = PlayerCharacter.new
  end

  def calculate_attribute
    result = CreatorsHelper.calculate_attribute(params[:attribute], params[:race], params[:gender])
    render text: result
  end

end
