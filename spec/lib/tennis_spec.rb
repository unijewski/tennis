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

  it "player 1 wins" do
    @tennis.point_for(1)
    @tennis.point_for(1)
    @tennis.point_for(1)
    @tennis.point_for(1)
    expect(@tennis.score).to eq "player 1 wins"
  end

  it "the score is 0-15" do
    @tennis.point_for(2)
    expect(@tennis.score).to eq "0 - 15"
  end


  it "the score is 0-30" do
    @tennis.point_for(2)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "0 - 30"
  end

  it "the score is 0-40" do
    @tennis.point_for(2)
    @tennis.point_for(2)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "0 - 40"
  end

  it "player 2 wins" do
    @tennis.point_for(2)
    @tennis.point_for(2)
    @tennis.point_for(2)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "player 2 wins"
  end

  it "the score is 40-30" do
    @tennis.point_for(1)
    @tennis.point_for(1)
    @tennis.point_for(1)
    @tennis.point_for(2)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "40 - 30"
  end
  
end