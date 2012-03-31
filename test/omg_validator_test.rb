require 'test_helper'

class OmgValidatorTest < ActiveSupport::TestCase  
  def setup
    @thing = nil
    @thing = Thing.new({
      zip_code: Things.zip_code[:valid],
      postal_or_zip_code: Things.postal_code[:valid]
    })
  end
  
  def teardown
    @thing = nil
  end
  
  test "truth" do
    assert_kind_of Module, OmgValidator
  end
  
  test "thing should be invalid if zip_code is not a valid zip_code" do
    Things.zip_codes[:invalid].each do |zip|
      @thing.zip_code = zip
      assert !@thing.valid?, "#{zip} - #{@thing.errors.full_messages.join("\n")}"
    end
  end
  
  test "thing should be valid if zip_code is a valid zip code" do
    Things.zip_codes[:valid].each do |zip|
      @thing.zip_code = zip
      assert @thing.valid?, "#{zip} - #{@thing.errors.full_messages.join("\n")}"
    end
  end
  
  test "thing should be invalid if postal_or_zip_code is not a valid postal or zip code" do
    Things.postal_codes[:invalid].concat(Things.zip_codes[:invalid]).each do |zip_or_postal|
      @thing.postal_or_zip_code = zip_or_postal
      assert !@thing.valid?, "#{zip_or_postal} - #{@thing.errors.full_messages.join("\n")}"
    end
  end
  
  test "thing should be valid if postal_or_zip_code is a valid postal or zip code" do    
    Things.postal_codes[:valid].concat(Things.zip_codes[:valid]).each do |zip_or_postal|
      @thing.postal_or_zip_code = zip_or_postal
      assert @thing.valid?, "#{zip_or_postal} - #{@thing.errors.full_messages.join("\n")}"
    end
  end
end
