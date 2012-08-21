require 'test_helper'

class IpAddressValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = Thing.new
    @things = Things.new
  end

  def teardown
    @thing = nil
  end

  test 'Thing should be valid if the ip address attribute is a valid ip address.' do
    @things.ip_address['valid'].each do |string|
      @thing.ip_address = string.to_s
      assert @thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end

  test 'Thing should be invalid if the ip address attribute is a valid ip address.' do
    @things.ip_address['invalid'].each do |string|
      @thing.ip_address = string.to_s
      assert !@thing.valid?, string.to_s << ' - ' << @thing.errors.full_messages.join('\n')
    end
  end
end