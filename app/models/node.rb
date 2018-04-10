class Node < ApplicationRecord
  #associations
  has_many :node_inputs, inverse_of: :node
  has_many :node_outputs, inverse_of: :node
  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :node_outputs, reject_if: :all_blank, allow_destroy: true

  #validations
  validates :mode, :hostname, :location, presence: true
  validates :ipAddress, length: { in: 7..15 }
  validates :ipAddress, uniqueness: true
  validates :macAddress, uniqueness: true

  #records change history
  audited
  has_associated_audits

  #search
  searchkick
  after_commit :reindex_stuff




  private

  def reindex_stuff
    Rails.logger.debug "DEBUG: Node Reindex starting" if Rails.logger.debug?
    Node.reindex
    NodeInput.reindex
    NodeOutput.reindex
  end

end
