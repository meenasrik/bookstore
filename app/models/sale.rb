class Sale < ApplicationRecord
  belongs_to :book
  belongs_to :user

  attr_reader :stripe_token
end
