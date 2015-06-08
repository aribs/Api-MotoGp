class GpRacesController < ApplicationController
  before_action :set_gp_race, only: [:show, :edit, :update, :destroy]

  # GET /gp_races
  # GET /gp_races.json
  def index
    @gp_races = GpRace.all
  end

  # GET /gp_races/1
  # GET /gp_races/1.json
  def show
  end
  def api
    @gp_race = GpRace.find params[:id]
    respond_to do|format|
      format.html {render json: @gp_race}
      format.json {render json: @gp_race}
    end
  end
  def all_gp_races
    @gp_races = GpRace.all
    respond_to do |format|
      format.html{render json: @gp_races}
      format.json {render json: @gp_races}
    end
  end
  # GET /gp_races/new
  def new
    @gp_race = GpRace.new
  end

  # GET /gp_races/1/edit
  def edit
  end

  # POST /gp_races
  # POST /gp_races.json
  def create
    @gp_race = GpRace.new(gp_race_params)

    respond_to do |format|
      if @gp_race.save
        format.html { redirect_to @gp_race, notice: 'Gp race was successfully created.' }
        format.json { render :show, status: :created, location: @gp_race }
      else
        format.html { render :new }
        format.json { render json: @gp_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gp_races/1
  # PATCH/PUT /gp_races/1.json
  def update
    respond_to do |format|
      if @gp_race.update(gp_race_params)
        format.html { redirect_to @gp_race, notice: 'Gp race was successfully updated.' }
        format.json { render :show, status: :ok, location: @gp_race }
      else
        format.html { render :edit }
        format.json { render json: @gp_race.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gp_races/1
  # DELETE /gp_races/1.json
  def destroy
    @gp_race.destroy
    respond_to do |format|
      format.html { redirect_to gp_races_url, notice: 'Gp race was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gp_race
      @gp_race = GpRace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gp_race_params
      params.require(:gp_race).permit(:name, :location, :winner_2014, :pole_2014, :fast_lap_2014, :attendance_2014, :latitude, :longitude)
    end
end
