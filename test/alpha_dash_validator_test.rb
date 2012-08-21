require 'test_helper'

class AlphaDashValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if the alpha_dash attribute contains letters, numbers, dashes, or underscores.' do
    @things.alpha_dash['valid'].each do |string|
      @thing.alpha_dash = string.to_s
      assert @thing.valid?, string.to_s << " - " << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if the alpha_dash attribute contains spaces, punctuation or special characters.' do
    @things.alpha_dash['invalid'].each do |string|
      @thing.alpha_dash = string.to_s
      assert !@thing.valid?, string.to_s << " - " << @thing.errors.full_messages.join('\n')
    end
  end
end