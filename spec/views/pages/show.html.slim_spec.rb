require 'rails_helper'

RSpec.describe "pages/show", :type => :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :title => "Title",
      :abstract => "MyText",
      :content => "MyText",
      :ancestry => "Ancestry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ancestry/)
  end
end
