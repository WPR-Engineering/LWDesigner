class QorsController < ApplicationController
  before_action :set_qor, only: [:show, :edit, :update, :destroy]

  # GET /qors
  # GET /qors.json
  def index
    @qors = Qor.all
  end

  # GET /qors/1
  # GET /qors/1.json
  def show
  end

  # GET /qors/new
  def new
    @qor = Qor.new
  end

  # GET /qors/1/edit
  def edit
  end

  # POST /qors
  # POST /qors.json
  def create
    @qor = Qor.new(qor_params)

    respond_to do |format|
      if @qor.save
        format.html { redirect_to @qor, notice: 'Qor was successfully created.' }
        format.json { render :show, status: :created, location: @qor }
      else
        format.html { render :new }
        format.json { render json: @qor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qors/1
  # PATCH/PUT /qors/1.json
  def update
    respond_to do |format|
      if @qor.update(qor_params)
        format.html { redirect_to @qor, notice: 'Qor was successfully updated.' }
        format.json { render :show, status: :ok, location: @qor }
      else
        format.html { render :edit }
        format.json { render json: @qor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qors/1
  # DELETE /qors/1.json
  def destroy
    @qor.destroy
    respond_to do |format|
      format.html { redirect_to qors_url, notice: 'Qor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qor
      @qor = Qor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qor_params
      params.require(:qor).permit(:hostname, :location, :macAddress, :ipAddress, :subnetMask, :serialNumber)
    end
end
