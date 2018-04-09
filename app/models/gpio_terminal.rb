class GpioTerminal < ApplicationRecord
  belongs_to :node_gpio

  audited associated_with: :node_gpio
end
