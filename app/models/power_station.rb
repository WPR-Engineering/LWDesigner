class PowerStation < ApplicationRecord
  has_many :ps_inputs, inverse_of: :power_station
  accepts_nested_attributes_for :ps_inputs, reject_if: :all_blank, allow_destroy: true

  has_many :ps_outputs, inverse_of: :power_station
  accepts_nested_attributes_for :ps_outputs, reject_if: :all_blank, allow_destroy: true

  has_many :ps_gpio_terminals, inverse_of: :power_station
  accepts_nested_attributes_for :ps_gpio_terminals, reject_if: :all_blank, allow_destroy: true


  #records change history
  audited
  has_associated_audits

end
