class DraftingController < ApplicationController
  def index
    Dir.chdir("/Volumes/WPR/engineer/Drawings/Plots/Vilas/DWF/")
    @file_serv = "file:////addata/wpr/engineer/drawings/Plots/Vilas/DWF/"
    @drafts = Dir.glob("*")
  end

end
