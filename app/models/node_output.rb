class NodeOutput < ApplicationRecord
  NUMBER_OF_PERMITTED_INPUTS = 4
  MONO_INPUTS = 8
  belongs_to :node
  validate :validate_output_limit

  def validate_output_limit
    if node.mode == "Stereo" && node.node_outputs.size > NUMBER_OF_PERMITTED_INPUTS
      node.errors.add(:base, :invalid, message: "Only 4 outputs are allowed in stereo mode, please remove addditional outputs or switch to mono or mixed")
    end
    if node.mode == "Mono" && node.node_outputs.size > MONO_INPUTS
      node.errors.add(:base, :invalid, message: "Only 8 outputs are allowed in Mono mode, please remove addditional outputs.")
    end
    if node.mode == "Mixed" && node.node_outputs.size > MONO_INPUTS
      node.errors.add(:base, :invalid, message: "Maximum of 8 output are allowed in Mixed mode, please remove addditional outputs.")
    end
  end

end
