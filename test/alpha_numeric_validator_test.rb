require 'test_helper'

class AlphaNumericValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if alpha_numeric attribute has alphanumeric characters.' do
    @things.alpha_numeric['valid'].each do |string|
      @thing.alpha_numeric = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if alpha_numeric attribute has non-alphanumeric characters.' do
    @things.alpha_numeric['invalid'].each do |string|
      @thing.alpha_numeric = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end