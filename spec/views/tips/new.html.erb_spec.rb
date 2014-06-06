require 'spec_helper'

describe "tips/new" do
  before(:each) do
    assign(:tip, stub_model(Tip,
      :tip => "MyString",
      :source => "MyString"
    ).as_new_record)
  end

  it "renders new tip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tips_path, "post" do
      assert_select "input#tip_tip[name=?]", "tip[tip]"
      assert_select "input#tip_source[name=?]", "tip[source]"
    end
  end
end
