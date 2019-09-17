require 'rails_helper'

RSpec.describe "assets/index", type: :view do
  before(:each) do
    assign(:assets, [
      Asset.create!(
        :name => "Name"
      ),
      Asset.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of assets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
