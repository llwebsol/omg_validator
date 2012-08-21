require 'test_helper'

class EmailValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if email attribute is a valid email address.' do
    @things.email['valid'].each do |string|
      @thing.email = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should invalid if email attribute is not a valid email address.' do
    @things.email['invalid'].each do |string|
      @thing.email = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end