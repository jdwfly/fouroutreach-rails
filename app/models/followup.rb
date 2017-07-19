class Followup < ApplicationRecord
  belongs_to :prospect
  resourcify

  scope :sorted, -> { order('date ASC') }
end
