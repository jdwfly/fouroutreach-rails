class Followup < ApplicationRecord
  belongs_to :prospect

  scope :sorted, -> { order('date ASC') }
end
