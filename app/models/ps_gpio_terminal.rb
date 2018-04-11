class PsGpioTerminal < ApplicationRecord
  belongs_to :power_station

  #change history
  audited associated_with: :power_station

  #search
  searchkick
end
