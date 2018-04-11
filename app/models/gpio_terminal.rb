class GpioTerminal < ApplicationRecord
  #associations
  belongs_to :node_gpio
  #change history
  audited associated_with: :node_gpio

  #search
  searchkick
end
