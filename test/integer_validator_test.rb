require 'test_helper'

class IntegerValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if the integer attribute is a valid integer.' do
    @things.integer['valid'].each do |string|
      @thing.integer = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if the integer attribute is not a valid integer.' do
    @things.integer['invalid'].each do |string|
      @thing.integer = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end