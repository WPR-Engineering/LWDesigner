class NodeGpio < ApplicationRecord
  searchkick
  has_many :gpio_terminals, inverse_of: :node_gpio
  accepts_nested_attributes_for :gpio_terminals, reject_if: :all_blank, allow_destroy: true


  after_commit :reindex_stuff


  audited
  has_associated_audits

  private

  def reindex_stuff
    puts "REINDEX!"
    NodeGpio.reindex
    GpioTerminal.reindex
  end
end
