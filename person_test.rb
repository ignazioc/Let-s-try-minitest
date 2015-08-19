require 'minitest/autorun'
require_relative 'person'


class TestPerson < Minitest::Test

  def setup
    @person = Person.new
  end


  def test_is_called_john_doe
  	assert_equal "John Doe", @person.name
  end
end