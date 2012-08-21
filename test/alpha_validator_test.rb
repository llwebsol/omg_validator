require 'test_helper'

class AlphaValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if the alpha attribute contains only alpha characters.' do
    @things.alpha['valid'].each do |string|
      @thing.alpha = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if the alpha attribute contains non-alpha characters.' do
    @things.alpha['invalid'].each do |string|
      @thing.alpha = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end