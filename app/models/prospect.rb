class Prospect < ApplicationRecord
  has_many :followups, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :date_first_contact, presence: true
  before_validation :init

  def last_update
    self.followups.sorted.last.date || self.date_first_contact
  end

  private
    def init
      self.date_first_contact ||= Date.today.strftime("%Y-%m-%d")
    end
end
