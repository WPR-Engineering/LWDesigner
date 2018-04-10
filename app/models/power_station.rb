class PowerStation < ApplicationRecord
  has_many :node_inputs, inverse_of: :node

  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true

  has_many :node_outputs, inverse_of: :node
  accepts_nested_attributes_for :node_outputs, reject_if: :all_blank, allow_destroy: true

  has_many :gpio_terminals, inverse_of: :power_station
  accepts_nested_attributes_for :gpio_terminals, reject_if: :all_blank, allow_destroy: true


  #records change history
  audited
  has_associated_audits

end
