require 'spec_helper'

describe "Tennis" do 

  before(:each) do
    @tennis = Tennis.new
  end

  it "the score is 0-0" do
    expect(@tennis.score).to eq "0 - 0"
  end

  it "the score is 15-0" do
    @tennis.point_for(1)
    expect(@tennis.score).to eq "15 - 0"
  end

  it "the score is 30-0" do
    @tennis.point_for(1)
    @tennis.point_for(1)
    expect(@tennis.score).to eq "30 - 0"
  end

  it "the score is 40-0" do
    @tennis.point_for(1)
    @tennis.point_for(1)
    @tennis.point_for(1)
    expect(@tennis.score).to eq "40 - 0"
  end
  
end