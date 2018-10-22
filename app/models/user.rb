class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validations 
  validates :name, :email, presence: true

  # associations
  has_one_attached :avatar

  has_many :sales
  has_many :books, through: :sales
end
