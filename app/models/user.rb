class User < ApplicationRecord
  rolify
  has_many :prospects
  has_many :followups, through: :prospects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
