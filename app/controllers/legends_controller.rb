class LegendsController < ApplicationController
  before_action :set_legend, only: [:show, :edit, :update, :destroy]

  # GET /legends
  # GET /legends.json
  def index
    @legends = Legend.all
  end
  def api
    @legend = Legend.where("last_name = ?", params[:last_name]).first
    respond_to do|format|
      format.html {render json: @legend}
      format.json {render json: @legend}
    end
  end
  def search_legend
    @legend = Legend.where("last_name LIKE '%" + params[:last_name].to_s  + "%'",)
    respond_to do|format|
      format.html {render json: @legend}
      format.json {render json: @legend}
    end
  end
  def all_legends
    @legends = Legend.all
    respond_to do |format|
      format.html {render json: @legends}
      format.json {render json: @legends}
    end
  end

  # GET /legends/1
  # GET /legends/1.json
  def show
  end

  # GET /legends/new
  def new
    @legend = Legend.new
  end

  # GET /legends/1/edit
  def edit
  end

  # POST /legends
  # POST /legends.json
  def create
    @legend = Legend.new(legend_params)

    respond_to do |format|
      if @legend.save
        format.html { redirect_to @legend, notice: 'Legend was successfully created.' }
        format.json { render :show, status: :created, location: @legend }
      else
        format.html { render :new }
        format.json { render json: @legend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legends/1
  # PATCH/PUT /legends/1.json
  def update
    respond_to do |format|
      if @legend.update(legend_params)
        format.html { redirect_to @legend, notice: 'Legend was successfully updated.' }
        format.json { render :show, status: :ok, location: @legend }
      else
        format.html { render :edit }
        format.json { render json: @legend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legends/1
  # DELETE /legends/1.json
  def destroy
    @legend.destroy
    respond_to do |format|
      format.html { redirect_to legends_url, notice: 'Legend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legend
      @legend = Legend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legend_params
      params.require(:legend).permit(:last_name, :name, :number, :n_races, :n_victory, :n_second_position, :n_third_position, :n_fastest_lap, :n_pole_positions, :url_photo, :n_championships)
    end
end
