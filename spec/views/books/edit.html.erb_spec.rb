require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      title: "MyString",
      author: "MyString",
      description: "MyText",
      opnion: "MyText",
      rating: 1,
      read: false,
      wishlist: false
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "textarea[name=?]", "book[opnion]"

      assert_select "input[name=?]", "book[rating]"

      assert_select "input[name=?]", "book[read]"

      assert_select "input[name=?]", "book[wishlist]"
    end
  end
end
