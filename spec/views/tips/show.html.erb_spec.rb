require 'spec_helper'

describe "tips/show" do
  before(:each) do
    @tip = assign(:tip, stub_model(Tip,
      :tip => "Tip",
      :source => "Source"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tip/)
    rendered.should match(/Source/)
  end
end
