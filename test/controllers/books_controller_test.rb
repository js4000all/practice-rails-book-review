require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should get create" do
    post books_url, params: { book: { title: "Test Book", author: "Test Author", publisher: "Test Publisher", published_year: 2024 } }
    assert_response :redirect
  end
end
