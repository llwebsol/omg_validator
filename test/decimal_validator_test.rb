require 'test_helper'

class DecimalValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if the decimal attribute is a floating point number.' do
    @things.decimal['valid'].each do |string|
      @thing.decimal = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if the decimal attribute is not a floating point number.' do
    @things.decimal['invalid'].each do |string|
      @thing.decimal = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end