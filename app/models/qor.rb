class Qor < ApplicationRecord
  has_many :qor_inputs, inverse_of: :qor
  accepts_nested_attributes_for :qor_inputs, reject_if: :all_blank, allow_destroy: true

  has_many :qor_outputs, inverse_of: :qor
  accepts_nested_attributes_for :qor_outputs, reject_if: :all_blank, allow_destroy: true

  has_many :qor_gpio_terminals, inverse_of: :qor
  accepts_nested_attributes_for :qor_gpio_terminals, reject_if: :all_blank, allow_destroy: true


  #records change history
  audited
  has_associated_audits

  #search
  searchkick
  after_commit :reindex_stuff




  private

  def reindex_stuff
    Rails.logger.debug "DEBUG: Node Reindex starting" if Rails.logger.debug?
    Qor.reindex
    QorInput.reindex
    QorOutput.reindex
    QorGpioTerminal.reindex
  end
end
