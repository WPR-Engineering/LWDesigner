class HistoryController < ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]
  before_action :set_audit, only: [:show, :edit, :update, :destroy]



  def diff
    @nodes = Node.all
    puts @node

  end

end
