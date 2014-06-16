require 'minitest/unit'
require 'minitest/autorun'
require './sample.rb'

class Test < MiniTest::Unit::TestCase
    def test_add
    	sample = Sample.new
    	expected = sample.runSample
    	assert_equal expected, 3
    end
end