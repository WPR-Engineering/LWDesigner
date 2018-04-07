class Node < ApplicationRecord
  has_many :node_inputs, inverse_of: :node
  has_many :node_outputs, inverse_of: :node
  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :node_outputs, reject_if: :all_blank, allow_destroy: true
  validates :mode, :hostname, :location, presence: true
  validates :ipAddress, length: { in: 7..15 }
end
