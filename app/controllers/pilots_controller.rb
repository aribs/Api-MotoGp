class PilotsController < ApplicationController
  before_action :set_pilot, only: [:show, :edit, :update, :destroy]

  # GET /pilots
  # GET /pilots.json
  def index
    @pilots = Pilot.all
  end
  def api
    @pilot = Pilot.where("last_name = ?", params[:last_name]).first
    respond_to do|format|
      format.html {render json: @pilot}
      format.json {render json: @pilot}
    end
  end
  def search_pilot
    @pilot = Pilot.where("last_name LIKE '%" + params[:last_name].to_s  + "%'",)
    respond_to do|format|
      format.html {render json: @pilot}
      format.json {render json: @pilot}
    end
  end
  def all_pilots
    @pilots = Pilot.all
    respond_to do |format|
      format.html {render json: @pilots}
      format.json {render json: @pilots}
    end
  end
  # GET /pilots/1
  # GET /pilots/1.json
  def show
  end

  # GET /pilots/new
  def new
    @pilot = Pilot.new
  end

  # GET /pilots/1/edit
  def edit
  end

  # POST /pilots
  # POST /pilots.json
  def create
    @pilot = Pilot.new(pilot_params)

    respond_to do |format|
      if @pilot.save
        format.html { redirect_to @pilot, notice: 'Pilot was successfully created.' }
        format.json { render :show, status: :created, location: @pilot }
      else
        format.html { render :new }
        format.json { render json: @pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pilots/1
  # PATCH/PUT /pilots/1.json
  def update
    respond_to do |format|
      if @pilot.update(pilot_params)
        format.html { redirect_to @pilot, notice: 'Pilot was successfully updated.' }
        format.json { render :show, status: :ok, location: @pilot }
      else
        format.html { render :edit }
        format.json { render json: @pilot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pilots/1
  # DELETE /pilots/1.json
  def destroy
    @pilot.destroy
    respond_to do |format|
      format.html { redirect_to pilots_url, notice: 'Pilot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pilot
      @pilot = Pilot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pilot_params
      params.require(:pilot).permit(:last_name, :name, :number, :team, :n_races, :n_victory, :n_second_position, :n_third_position, :n_fastest_lap, :n_pole_positions, :n_championships, :url_photo)
    end
end
