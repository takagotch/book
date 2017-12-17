require 'test_helper'

class BookTest < ActiveSupport::TestCase

test "factory girl" do
  book = FactoryGirl.create(:book)
  assert_equal "Takashi Yoshioka", book_full_name
end

test "presence" do
  book = Book.new
  assert book.invalid?
  assert book.errors.include? (:title)
end

end

