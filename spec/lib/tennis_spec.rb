require 'spec_helper'

describe "Tennis" do 

  before(:each) do
    @tennis = Tennis.new
  end

  it "the score is 0-0" do
    expect(@tennis.score).to eq "0 - 0"
  end
  
end