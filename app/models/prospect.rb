class Prospect < ApplicationRecord
  has_many :followups, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :date_first_contact, presence: true
  before_validation :init
  resourcify

  def last_update
    if self.followups.sorted.last.nil?
      self.date_first_contact
    else
      self.followups.sorted.last.date
    end
  end

  private
    def init
      self.date_first_contact ||= Date.today.strftime("%Y-%m-%d")
    end
end
