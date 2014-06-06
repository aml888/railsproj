require 'spec_helper'

describe "tips/edit" do
  before(:each) do
    @tip = assign(:tip, stub_model(Tip,
      :tip => "MyString",
      :source => "MyString"
    ))
  end

  it "renders the edit tip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tip_path(@tip), "post" do
      assert_select "input#tip_tip[name=?]", "tip[tip]"
      assert_select "input#tip_source[name=?]", "tip[source]"
    end
  end
end
