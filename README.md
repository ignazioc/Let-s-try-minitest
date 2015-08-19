# Let's try minitest.


Minitest is a different why for writing the test with ruby.

It is different from RSpec primarly because the tests are just ruby code. No specific DSL is involved.

It supports two way to write tests: using normal method approach and using a specs-like approac.

This is a basic example of test class
```ruby
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
```

and this is the same test, but using a more specs-live approach
```ruby
require 'minitest/autorun'
require_relative 'person'

describe Person do
	before do
		@person = Person.new
	end

	describe "#name" do
		it "is john doe by default" do
			@person.name.must_equal "John Doe"
		end
	end
end
```

to run the tests just run:

    ruby person_expectation.rb
    
