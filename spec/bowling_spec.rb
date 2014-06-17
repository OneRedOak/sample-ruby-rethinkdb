require 'spec_helper.rb'
require './bowling'

describe Bowling, "#score" do
  it "returns 3 for all gutter game" do
    bowling = Bowling.new
    20.times { bowling.hit() }
    bowling.score.should eq(3)
  end
end
