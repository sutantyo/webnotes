require 'rails_helper'

RSpec.describe "pages/index", :type => :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :title => "Title",
        :abstract => "MyText",
        :content => "MyText",
        :ancestry => "Ancestry"
      ),
      Page.create!(
        :title => "Title",
        :abstract => "MyText",
        :content => "MyText",
        :ancestry => "Ancestry"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ancestry".to_s, :count => 2
  end
end
