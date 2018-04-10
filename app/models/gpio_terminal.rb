class GpioTerminal < ApplicationRecord
  #associations
  belongs_to :node_gpio
  belongs_to :power_station

  #change history
  audited associated_with: :node_gpio

  #search
  searchkick
end
