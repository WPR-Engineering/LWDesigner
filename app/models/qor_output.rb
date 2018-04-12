class QorOutput < ApplicationRecord
  belongs_to :qor

  #change history
  audited associated_with: :qor

  #search
  searchkick
end
