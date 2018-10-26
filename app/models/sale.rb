class Sale < ApplicationRecord
  belongs_to :book
  belongs_to :user

  attr_reader :stripe_token

  after_create :recalculate_book_popularity_and_price

private

  def recalculate_book_popularity_and_price
    RecalculatePopularityAndPriceJob.perform_later(book)
  end
end
