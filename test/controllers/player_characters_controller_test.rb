require 'test_helper'

class PlayerCharactersControllerTest < ActionController::TestCase
  setup do
    @player_character = player_characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_character" do
    assert_difference('PlayerCharacter.count') do
      post :create, player_character: { favoured_attribute1: @player_character.favoured_attribute1, favoured_attribute2: @player_character.favoured_attribute2, major_skill1: @player_character.major_skill1, major_skill2: @player_character.major_skill2, major_skill3: @player_character.major_skill3, major_skill4: @player_character.major_skill4, major_skill5: @player_character.major_skill5, minor_skill1: @player_character.minor_skill1, minor_skill2: @player_character.minor_skill2, minor_skill3: @player_character.minor_skill3, minor_skill4: @player_character.minor_skill4, minor_skill5: @player_character.minor_skill5, specialization: @player_character.specialization }
    end

    assert_redirected_to player_character_path(assigns(:player_character))
  end

  test "should show player_character" do
    get :show, id: @player_character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_character
    assert_response :success
  end

  test "should update player_character" do
    patch :update, id: @player_character, player_character: { favoured_attribute1: @player_character.favoured_attribute1, favoured_attribute2: @player_character.favoured_attribute2, major_skill1: @player_character.major_skill1, major_skill2: @player_character.major_skill2, major_skill3: @player_character.major_skill3, major_skill4: @player_character.major_skill4, major_skill5: @player_character.major_skill5, minor_skill1: @player_character.minor_skill1, minor_skill2: @player_character.minor_skill2, minor_skill3: @player_character.minor_skill3, minor_skill4: @player_character.minor_skill4, minor_skill5: @player_character.minor_skill5, specialization: @player_character.specialization }
    assert_redirected_to player_character_path(assigns(:player_character))
  end

  test "should destroy player_character" do
    assert_difference('PlayerCharacter.count', -1) do
      delete :destroy, id: @player_character
    end

    assert_redirected_to player_characters_path
  end
end
