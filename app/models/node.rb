class Node < ApplicationRecord
  NUMBER_OF_PERMITTED_INPUTS = 4
  has_many :node_inputs, inverse_of: :node
  has_many :node_outputs, inverse_of: :node
  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :node_outputs, reject_if: :all_blank, allow_destroy: true
  validates :mode, :hostname, :location, presence: true
  validates :ipAddress, length: { in: 7..15 }

private

 def validate_input_limit
  raise Exception.new if node_inputs.size > NUMBER_OF_PERMITTED_INPUTS
 end
end
