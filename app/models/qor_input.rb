class QorInput < ApplicationRecord
  belongs_to :qor

  #change history
  audited associated_with: :qor

  #search
  searchkick
end
