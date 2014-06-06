require 'spec_helper'

describe "tips/index" do
  before(:each) do
    assign(:tips, [
      stub_model(Tip,
        :tip => "Tip",
        :source => "Source"
      ),
      stub_model(Tip,
        :tip => "Tip",
        :source => "Source"
      )
    ])
  end

  it "renders a list of tips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tip".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
  end
end
