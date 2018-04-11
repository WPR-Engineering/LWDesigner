class SearchController < ApplicationController
  def query
    @records = Node.search(params[:search], index_name: [Node.searchkick_index.name, NodeGpio.searchkick_index.name,
      GpioTerminal.searchkick_index.name,
      NodeInput.searchkick_index.name,
      NodeOutput.searchkick_index.name,
      PowerStation.searchkick_index.name,
      PsInput.searchkick_index.name,
      PsOutput.searchkick_index.name,
      PsGpioTerminal.searchkick_index.name]).results

  #  @records.delete_if { |record| cannot? :show, record }



    respond_to do |format|
      format.html # query.html.erb
      format.json { render json: @records }
    end
  end
end
