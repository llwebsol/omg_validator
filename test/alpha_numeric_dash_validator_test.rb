require 'test_helper'

class AlphaNumericDashValidator < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if alpha_numeric_dash attribute has alphanumeric characters and dashes/underscores.' do
    @things.alpha_numeric_dash['valid'].each do |string|
      @thing.alpha_numeric_dash = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if alpha_numeric_dash attribute has non-alphanumeric and dash/underscore characters.' do
    @things.alpha_numeric_dash['invalid'].each do |string|
      @thing.alpha_numeric_dash = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end