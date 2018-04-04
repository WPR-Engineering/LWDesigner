class Node < ApplicationRecord
  has_many :node_inputs, inverse_of: :node
  accepts_nested_attributes_for :node_inputs, reject_if: :all_blank, allow_destroy: true
end
