require 'rails_helper'

RSpec.describe "pages/edit", :type => :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :title => "MyString",
      :abstract => "MyText",
      :content => "MyText",
      :ancestry => "MyString"
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_title[name=?]", "page[title]"

      assert_select "textarea#page_abstract[name=?]", "page[abstract]"

      assert_select "textarea#page_content[name=?]", "page[content]"

      assert_select "input#page_ancestry[name=?]", "page[ancestry]"
    end
  end
end
