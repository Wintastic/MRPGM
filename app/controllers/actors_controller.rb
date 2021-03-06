class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit
  end

  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(actor_params)

    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
        format.json { render :show, status: :created, location: @actor }
      else
        format.html { render :new }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors/1
  # PATCH/PUT /actors/1.json
  def update
    respond_to do |format|
      if @actor.update(actor_params)
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor.destroy
    respond_to do |format|
      format.html { redirect_to actors_url, notice: 'Actor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:name, :race, :gender, :level, :character_class, :health, :magicka, :fatigue, :encumbrance, :agility, :endurance, :intelligence, :luck, :personality, :speed, :strength, :willpower, :heavy_armour, :medium_armour, :spear, :acrobatics, :armourer, :axe, :blunt_weapon, :long_blade, :block, :light_armour, :marksman, :sneak, :athletics, :hand_to_hand, :short_blade, :unarmoured, :illusion, :mercantile, :speechcraft, :alchemy, :conjuration, :enchant, :security, :alteration, :destruction, :mysticism, :restoration, :fire_resist, :frost_resist, :poison_resist, :shock_resist, :magicka_resist, :disease_resist,
                                    :specialization, :birthsign, :favoured_attribute1, :favoured_attribute2, :major_skill1, :major_skill2, :major_skill3, :major_skill4, :major_skill5, :minor_skill1, :minor_skill2, :minor_skill3, :minor_skill4, :minor_skill5)
    end
end
