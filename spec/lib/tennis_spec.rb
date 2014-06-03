require 'spec_helper'

describe "Tennis" do 

  before(:each) do
    @tennis = Tennis.new
  end

  def deuce!
    3.times do
      @tennis.point_for(1)
      @tennis.point_for(2)
    end
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
    3.times do
      @tennis.point_for(1)
    end
    expect(@tennis.score).to eq "40 - 0"
  end

  it "player 1 wins" do
    4.times do
      @tennis.point_for(1)
    end
    expect(@tennis.score).to eq "player 1 wins"
  end

  it "the score is 0-15" do
    @tennis.point_for(2)
    expect(@tennis.score).to eq "0 - 15"
  end


  it "the score is 0-30" do
    2.times do
      @tennis.point_for(2)
    end
    expect(@tennis.score).to eq "0 - 30"
  end

  it "the score is 0-40" do
    3.times do
      @tennis.point_for(2)
    end
    expect(@tennis.score).to eq "0 - 40"
  end

  it "player 2 wins" do
    4.times do
      @tennis.point_for(2)
    end
    expect(@tennis.score).to eq "player 2 wins"
  end

  it "the score is 40-30" do
    3.times do
      @tennis.point_for(1)
    end
    2.times do
      @tennis.point_for(2)
    end
    expect(@tennis.score).to eq "40 - 30"
  end

  it "deuce, 40-40" do
    deuce!
    expect(@tennis.score).to eq "deuce"
  end

  it "player 1 has an advantage" do
    deuce!
    @tennis.point_for(1)
    expect(@tennis.score).to eq "player 1 has an advantage"
  end
  
  it "player 1 wins in deuce" do
    deuce!
    @tennis.point_for(1)
    @tennis.point_for(1)
    expect(@tennis.score).to eq "player 1 wins in deuce"
  end

  it "player 2 has an advantage" do
    deuce!
    @tennis.point_for(2)
    expect(@tennis.score).to eq "player 2 has an advantage"
  end

  it "player 2 wins in deuce" do
    deuce!
    @tennis.point_for(2)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "player 2 wins in deuce"
  end

  it "deuce again" do
    deuce!
    @tennis.point_for(1)
    @tennis.point_for(2)
    expect(@tennis.score).to eq "deuce"
  end

end