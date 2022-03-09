require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/nytimes'

class NytimesTest < Minitest::Test
  attr_reader :hash

  def setup
    @hash = Nytimes::DATA
  end

  def test_it_can_get_copyright
    result = @hash[:copyright]

    assert result, "Copyright (c) 2018 The New York Times Company. All Rights Reserved."
  end

  def test_it_can_get_array_of_stories
    result = @hash[:results]
    assert result.is_a? (Array)
    assert_equal 44, result.count
  end

  

end
