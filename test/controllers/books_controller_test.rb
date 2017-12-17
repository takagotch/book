require 'test_helper'

class BooksControllerTest < ActionController::TestCase

test "update" do
  book = FactoryGirl.create(:book)
  post :update, id: book, book: FactoryGirl.attributes_for(:book)
  assert_redirected_to book
end

test "fail to update" do
  book = FactoryGirl.create(:book)
  post :update, id: book,
    book: FactoryGirl,attribtes_for(:book, title: "")
  assert_response :success
  assert_template "edit"
end

end

