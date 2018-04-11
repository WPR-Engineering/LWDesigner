class HistoryController < ApplicationController
#  before_action :set_node, only: [:show, :edit, :update, :destroy]
  #before_action :set_audit, only: [:show, :edit, :update, :destroy]
#  before_action :set_node_gpio, only: [:show, :edit, :update, :destroy]


  def diff
    @nodes = Node.all
    puts @node

    @node_id = Node.find(params[:node_id])

    audit_change = @node_id.own_and_associated_audits
    audit_select_change = audit_change.find(params[:audit_id])
    @audit_show_change = audit_select_change.audited_changes

  end

  def diff_gpio
    @nodes = NodeGpio.all

    @node_id = NodeGpio.find(params[:node_gpio_id])

    audit_change = @node_id.own_and_associated_audits
    audit_select_change = audit_change.find(params[:audit_id])
    @audit_show_change = audit_select_change.audited_changes
    @audit_version = audit_select_change.version

  end

  def diff_ps
    @nodes = PowerStation.all

    @node_id = PowerStation.find(params[:power_station_id])

    audit_change = @node_id.own_and_associated_audits
    audit_select_change = audit_change.find(params[:audit_id])
    @audit_show_change = audit_select_change.audited_changes
    @audit_version = audit_select_change.version

  end


  private

  #def history_params
#    params.require(:node).permit(:hostname, :location, :ipAddress, :subnetMask, :nodeType, :mode,
#    node_inputs_attributes: [:id, :_destroy, :name, :inputDescription, :lwChannel, :shared, :sourceMode, :gain, :disabled, :notes, :node_id],
#    node_outputs_attributes: [:id, :_destroy, :destination, :outputDescription, :selectedChannel, :mode, :notes, :gain, :node_id]
  #)
  #end

end
