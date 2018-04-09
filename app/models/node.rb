class Node < ApplicationRecord
  searchkick
  has_many :node_inputs, inverse_of: :node
  has_many :node_outputs, inverse_of: :node
  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :node_outputs, reject_if: :all_blank, allow_destroy: true
  validates :mode, :hostname, :location, presence: true
  validates :ipAddress, length: { in: 7..15 }

  audited
  has_associated_audits

  after_commit :reindex_stuff




  private

  def reindex_stuff
    puts "reindexing"
    Node.reindex
    NodeInput.reindex
    NodeOutput.reindex
  end

end
