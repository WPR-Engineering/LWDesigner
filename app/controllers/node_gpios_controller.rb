class NodeGpiosController < ApplicationController
  before_action :set_node_gpio, only: [:show, :edit, :update, :destroy]

  # GET /node_gpios
  # GET /node_gpios.json
  def index
    @node_gpios = NodeGpio.all
  end

  # GET /node_gpios/1
  # GET /node_gpios/1.json
  def show
  end

  # GET /node_gpios/new
  def new
    @node_gpio = NodeGpio.new
  end

  # GET /node_gpios/1/edit
  def edit
  end

  # POST /node_gpios
  # POST /node_gpios.json
  def create
    @node_gpio = NodeGpio.new(node_gpio_params)

    respond_to do |format|
      if @node_gpio.save
        format.html { redirect_to @node_gpio, notice: 'Node gpio was successfully created.' }
        format.json { render :show, status: :created, location: @node_gpio }
      else
        format.html { render :new }
        format.json { render json: @node_gpio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /node_gpios/1
  # PATCH/PUT /node_gpios/1.json
  def update
    respond_to do |format|
      if @node_gpio.update(node_gpio_params)
        format.html { redirect_to @node_gpio, notice: 'Node gpio was successfully updated.' }
        format.json { render :show, status: :ok, location: @node_gpio }
      else
        format.html { render :edit }
        format.json { render json: @node_gpio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /node_gpios/1
  # DELETE /node_gpios/1.json
  def destroy
    @node_gpio.destroy
    respond_to do |format|
      format.html { redirect_to node_gpios_url, notice: 'Node gpio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node_gpio
      @node_gpio = NodeGpio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_gpio_params
      params.require(:node_gpio).permit(:hostname, :location, :serialNumber, :macAddress, :ipAddress, :subnetmask,
      gpio_terminals_attributes: [:id, :_destroy, :name, :pin, :ioDirection, :lwChannel, :description, :notes, :node_gpio_id]
    )
    end
end
