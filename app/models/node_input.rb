class NodeInput < ApplicationRecord
  NUMBER_OF_PERMITTED_INPUTS = 4
  MONO_INPUTS = 8
  belongs_to :node
  validate :validate_input_limit

  private

   def validate_input_limit
    raise Exception.new('Thats not allowed') if node.mode == "Stero" && node.node_inputs.size > NUMBER_OF_PERMITTED_INPUTS
    raise Exception.new('This isnt allowed either') if node.mode == "Mono" && node.node_inputs.size > MONO_INPUTS
    raise Exception.new('This isnt allowed either') if node.mode == "Mixed" && node.node_inputs.size > MONO_INPUTS
   end

end
