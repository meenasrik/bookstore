class Book < ApplicationRecord 
  # associations
  belongs_to :author
  has_many :sales
  has_many :users, through: :sales

  has_one_attached :bookcover
  has_one_attached :file

  # validations
  validates :title, presence: true
  validates :author, presence: true
  validates :price, presence: true

  def stripe_amount
    (price * 100).to_i
  end

  def cover
    # to force to particular size, resize: '200x300!'
    return self.bookcover.variant(resize: '200x300')
  end
end
