class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  # has_many favourites
  has_many :bookings, dependent: :destroy
  has_many :shops
  has_many :favorites
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
