require 'rails_helper'

RSpec.describe "pages/new", :type => :view do
  before(:each) do
    assign(:page, Page.new(
      :title => "MyString",
      :abstract => "MyText",
      :content => "MyText",
      :ancestry => "MyString"
    ))
  end

  it "renders new page form" do
    render

    assert_select "form[action=?][method=?]", pages_path, "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "textarea#page_abstract[name=?]", "page[abstract]"

      assert_select "textarea#page_content[name=?]", "page[content]"

      assert_select "input#page_ancestry[name=?]", "page[ancestry]"
    end
  end
end
