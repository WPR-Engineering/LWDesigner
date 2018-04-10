class NodeGpio < ApplicationRecord

  #associations
  has_many :gpio_terminals, inverse_of: :node_gpio
  accepts_nested_attributes_for :gpio_terminals, reject_if: :all_blank, allow_destroy: true

  #validations
  validates  :hostname, :location, presence: true
  validates :ipAddress, length: { in: 7..15 }
  validates :ipAddress, uniqueness: true
  validates :macAddress, uniqueness: true

  #search
  searchkick
  after_commit :reindex_stuff

  #tracks change history
  audited
  has_associated_audits

  private

  #reindexes for search
  def reindex_stuff
    Rails.logger.debug "DEBUG: GPIO Reindex starting" if Rails.logger.debug?
    NodeGpio.reindex
    GpioTerminal.reindex
  end
end
