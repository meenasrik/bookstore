require "rails_helper"

RSpec.describe "Books", type: :system do
  it "has an index page of all books" do
    # field given in hash will override the factory field settings
    # example in this case is title
    first_book = create(:book)
    second_book = create(:book)

    visit "/"

    expect(page).to have_css("img")
    expect(page).to have_css("img")
    # expect(page).to have_text(first_book.title)
    # expect(page).to have_text(second_book.title)
  end
end
