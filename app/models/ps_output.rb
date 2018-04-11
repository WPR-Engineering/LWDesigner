class PsOutput < ApplicationRecord
  belongs_to :power_station

  #change history
  audited associated_with: :power_station
end
