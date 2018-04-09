class NetworkingsController < ApplicationController
  before_action :set_networking, only: [:show, :edit, :update, :destroy]

  # GET /networkings
  # GET /networkings.json
  def index
    @networkings = Networking.all
  end

  # GET /networkings/1
  # GET /networkings/1.json
  def show
  end

  # GET /networkings/new
  def new
    @networking = Networking.new
  end

  # GET /networkings/1/edit
  def edit
  end

  # POST /networkings
  # POST /networkings.json
  def create
    @networking = Networking.new(networking_params)

    respond_to do |format|
      if @networking.save
        format.html { redirect_to @networking, notice: 'Networking was successfully created.' }
        format.json { render :show, status: :created, location: @networking }
      else
        format.html { render :new }
        format.json { render json: @networking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /networkings/1
  # PATCH/PUT /networkings/1.json
  def update
    respond_to do |format|
      if @networking.update(networking_params)
        format.html { redirect_to @networking, notice: 'Networking was successfully updated.' }
        format.json { render :show, status: :ok, location: @networking }
      else
        format.html { render :edit }
        format.json { render json: @networking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /networkings/1
  # DELETE /networkings/1.json
  def destroy
    @networking.destroy
    respond_to do |format|
      format.html { redirect_to networkings_url, notice: 'Networking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_networking
      @networking = Networking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def networking_params
      params.require(:networking).permit(:hostname, :type, :model, :macAddress, :ipAddress, :subnetMask, :portCount)
    end
end
