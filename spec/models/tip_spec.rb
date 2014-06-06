require 'spec_helper'

describe Tip do
	before :each do
      @tip = build :tip
    end

	 it "should notify the user of a missing news tip" do
		@tip.tip = nil
		@tip.should_not be_valid
		@tip.errors.full_messages.should include "News tip must not be blank"
    end

	it "should notify the user of a missing source" do
		@tip.source = nil
		@tip.should_not be_valid
		@tip.errors.full_messages.should include "Source must not be blank"
    end
  
end
