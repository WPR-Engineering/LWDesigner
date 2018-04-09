class CablesController < ApplicationController
  before_action :set_cable, only: [:show, :edit, :update, :destroy]

  # GET /cables
  # GET /cables.json
  def index
    @cables = Cable.all
  end

  # GET /cables/1
  # GET /cables/1.json
  def show
  end

  # GET /cables/new
  def new
    @cable = Cable.new
  end

  # GET /cables/1/edit
  def edit
  end

  # POST /cables
  # POST /cables.json
  def create
    @cable = Cable.new(cable_params)

    respond_to do |format|
      if @cable.save
        format.html { redirect_to @cable, notice: 'Cable was successfully created.' }
        format.json { render :show, status: :created, location: @cable }
      else
        format.html { render :new }
        format.json { render json: @cable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cables/1
  # PATCH/PUT /cables/1.json
  def update
    respond_to do |format|
      if @cable.update(cable_params)
        format.html { redirect_to @cable, notice: 'Cable was successfully updated.' }
        format.json { render :show, status: :ok, location: @cable }
      else
        format.html { render :edit }
        format.json { render json: @cable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cables/1
  # DELETE /cables/1.json
  def destroy
    @cable.destroy
    respond_to do |format|
      format.html { redirect_to cables_url, notice: 'Cable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cable
      @cable = Cable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cable_params
      params.require(:cable).permit(:code, :number, :type, :color, :termination, :description)
    end
end
