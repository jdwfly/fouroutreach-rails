class Prospect < ApplicationRecord
  has_many :followups
  belongs_to :users
  validates :name, presence: true
  validates :date_first_contact, presence: true
  before_validation :init

  private
    def init
      self.date_first_contact ||= Date.today.strftime("%Y-%m-%d")
    end
end
