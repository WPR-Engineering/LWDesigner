class NodeInput < ApplicationRecord
  NUMBER_OF_PERMITTED_INPUTS = 4
  MONO_INPUTS = 8
  belongs_to :node
  validate :validate_input_limit
  audited associated_with: :node


  private

   def validate_input_limit
     if node.mode == "Stereo" && node.node_inputs.size > NUMBER_OF_PERMITTED_INPUTS
       node.errors.add(:base, :invalid, message: "Only 4 inputs are allowed in stereo mode, please remove addditional inputs or switch to mono or mixed")
     end
     if node.mode == "Mono" && node.node_inputs.size > MONO_INPUTS
       node.errors.add(:base, :invalid, message: "Only 8 inputs are allowed in Mono mode, please remove addditional inputs.")
     end
     if node.mode == "Mixed" && node.node_inputs.size > MONO_INPUTS
       node.errors.add(:base, :invalid, message: "Maximum of 8 inputs are allowed in Mixed mode, please remove addditional inputs.")
     end
   end



end
