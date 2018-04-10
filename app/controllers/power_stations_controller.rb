class PowerStationsController < ApplicationController
  before_action :set_power_station, only: [:show, :edit, :update, :destroy]

  # GET /power_stations
  # GET /power_stations.json
  def index
    @power_stations = PowerStation.all
  end

  # GET /power_stations/1
  # GET /power_stations/1.json
  def show
  end

  # GET /power_stations/new
  def new
    @power_station = PowerStation.new
  end

  # GET /power_stations/1/edit
  def edit
  end

  # POST /power_stations
  # POST /power_stations.json
  def create
    @power_station = PowerStation.new(power_station_params)

    respond_to do |format|
      if @power_station.save
        format.html { redirect_to @power_station, notice: 'Power station was successfully created.' }
        format.json { render :show, status: :created, location: @power_station }
      else
        format.html { render :new }
        format.json { render json: @power_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /power_stations/1
  # PATCH/PUT /power_stations/1.json
  def update
    respond_to do |format|
      if @power_station.update(power_station_params)
        format.html { redirect_to @power_station, notice: 'Power station was successfully updated.' }
        format.json { render :show, status: :ok, location: @power_station }
      else
        format.html { render :edit }
        format.json { render json: @power_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /power_stations/1
  # DELETE /power_stations/1.json
  def destroy
    @power_station.destroy
    respond_to do |format|
      format.html { redirect_to power_stations_url, notice: 'Power station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power_station
      @power_station = PowerStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_station_params
      params.require(:power_station).permit(:hostname, :location, :macAddress, :ipAddress, :subnetmask, :serialNumber,
      gpio_terminals_attributes: [:id, :_destroy, :name, :port, :pin, :ioDirection, :lwchannel, :description, :notes, :node_gpio_id]
    )
    end
end
