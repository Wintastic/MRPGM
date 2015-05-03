require 'test_helper'

class ActorsControllerTest < ActionController::TestCase
  setup do
    @actor = actors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actor" do
    assert_difference('Actor.count') do
      post :create, actor: { acrobatics: @actor.acrobatics, agility: @actor.agility, alchemy: @actor.alchemy, alteration: @actor.alteration, armourer: @actor.armourer, athletics: @actor.athletics, axe: @actor.axe, birthsign: @actor.birthsign, block: @actor.block, blunt_weapon: @actor.blunt_weapon, character_class: @actor.character_class, conjuration: @actor.conjuration, destruction: @actor.destruction, disease_resist: @actor.disease_resist, enchant: @actor.enchant, encumbrance: @actor.encumbrance, endurance: @actor.endurance, fatigue: @actor.fatigue, fire_resist: @actor.fire_resist, frost_resist: @actor.frost_resist, gender: @actor.gender, hand_to_hand: @actor.hand_to_hand, health: @actor.health, heavy_armour: @actor.heavy_armour, illusion: @actor.illusion, intelligence: @actor.intelligence, level: @actor.level, light_armour: @actor.light_armour, long_blade: @actor.long_blade, luck: @actor.luck, magicka: @actor.magicka, magicka_resist: @actor.magicka_resist, marksman: @actor.marksman, medium_armour: @actor.medium_armour, mercantile: @actor.mercantile, mysticism: @actor.mysticism, personality: @actor.personality, poison_resist: @actor.poison_resist, race: @actor.race, restoration: @actor.restoration, security: @actor.security, shock_resist: @actor.shock_resist, short_blade: @actor.short_blade, sneak: @actor.sneak, spear: @actor.spear, speechcraft: @actor.speechcraft, speed: @actor.speed, strength: @actor.strength, unarmoured: @actor.unarmoured, willpower: @actor.willpower }
    end

    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should show actor" do
    get :show, id: @actor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actor
    assert_response :success
  end

  test "should update actor" do
    patch :update, id: @actor, actor: { acrobatics: @actor.acrobatics, agility: @actor.agility, alchemy: @actor.alchemy, alteration: @actor.alteration, armourer: @actor.armourer, athletics: @actor.athletics, axe: @actor.axe, birthsign: @actor.birthsign, block: @actor.block, blunt_weapon: @actor.blunt_weapon, character_class: @actor.character_class, conjuration: @actor.conjuration, destruction: @actor.destruction, disease_resist: @actor.disease_resist, enchant: @actor.enchant, encumbrance: @actor.encumbrance, endurance: @actor.endurance, fatigue: @actor.fatigue, fire_resist: @actor.fire_resist, frost_resist: @actor.frost_resist, gender: @actor.gender, hand_to_hand: @actor.hand_to_hand, health: @actor.health, heavy_armour: @actor.heavy_armour, illusion: @actor.illusion, intelligence: @actor.intelligence, level: @actor.level, light_armour: @actor.light_armour, long_blade: @actor.long_blade, luck: @actor.luck, magicka: @actor.magicka, magicka_resist: @actor.magicka_resist, marksman: @actor.marksman, medium_armour: @actor.medium_armour, mercantile: @actor.mercantile, mysticism: @actor.mysticism, personality: @actor.personality, poison_resist: @actor.poison_resist, race: @actor.race, restoration: @actor.restoration, security: @actor.security, shock_resist: @actor.shock_resist, short_blade: @actor.short_blade, sneak: @actor.sneak, spear: @actor.spear, speechcraft: @actor.speechcraft, speed: @actor.speed, strength: @actor.strength, unarmoured: @actor.unarmoured, willpower: @actor.willpower }
    assert_redirected_to actor_path(assigns(:actor))
  end

  test "should destroy actor" do
    assert_difference('Actor.count', -1) do
      delete :destroy, id: @actor
    end

    assert_redirected_to actors_path
  end
end
