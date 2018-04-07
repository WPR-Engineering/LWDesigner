class NodeGpio < ApplicationRecord
  has_many :gpio_terminals, inverse_of: :node_gpio
  accepts_nested_attributes_for :gpio_terminals, reject_if: :all_blank, allow_destroy: true
end
