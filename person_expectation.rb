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