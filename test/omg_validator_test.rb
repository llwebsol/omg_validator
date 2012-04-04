require 'test_helper'

class OmgValidatorTest < ActiveSupport::TestCase
  def setup
    @thing = nil
    @thing = Thing.new({
                           alpha: Things.alphas[:valid].sample,
                           alpha_numeric: Things.alpha_numerics[:valid].sample,
                           alpha_dash: Things.alpha_dashes[:valid].sample,
                           zip_code: Things.zip_codes[:valid].sample,
                           postal_or_zip_code: Things.postal_codes[:valid].sample
                       })
  end

  def teardown
    @thing = nil
  end

  test "truth" do
    assert_kind_of Module, OmgValidator
  end

  test "thing should be invalid if alpha contains non-alpha characters" do
    Things.alphas[:invalid].each do |alpha|
      @thing.alpha = alpha
      assert !@thing.valid?, "#{alpha} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be valid if alpha contains only alpha characters" do
    Things.alphas[:valid].each do |alpha|
      @thing.alpha = alpha
      assert @thing.valid?, "#{alpha} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if alpha_numeric contains non-alpha-numeric characters" do
    Things.alpha_numerics[:invalid].each do |alpha_numeric|
      @thing.alpha_numeric = alpha_numeric
      assert !@thing.valid?, "#{alpha_numeric} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be valid if alpha_numeric contains only alpha-numeric characters" do
    Things.alpha_numerics[:valid].each do |alpha_numeric|
      @thing.alpha_numeric = alpha_numeric
      assert @thing.valid?, "#{alpha_numeric} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if alpha_dash contains non-alpha-numeric-dashes characters" do
    Things.alpha_dashes[:invalid].each do |alpha_dash|
      @thing.alpha_dash = alpha_dash
      assert !@thing.valid?, "#{alpha_dash} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be valid if alpha_dash contains only alpha-numeric-dashes characters" do
    Things.alpha_dashes[:valid].each do |alpha_dash|
      @thing.alpha_dash = alpha_dash
      assert @thing.valid? "#{alpha_dash} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be valid if alpha_dash contains only alpha or dash characters" do
    Things.alpha_dashes[:valid].each do |alpha_dash|
      @thing.alpha_dash = alpha_dash
      assert @thing.valid?, "#{alpha_dash} - #{@thing.errors.full_messages.join("\n")}"
    end
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

  # postal code
  test "thing should be valid if postal_code is a valid postal code" do
    Things.postal_codes[:valid].each do |code|
      @thing.postal_code = code
      assert @thing.valid?, "#{code} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if postal_code is not a valid postal code" do
    Things.postal_codes[:invalid].each do |code|
      @thing.postal_code = code
      assert !@thing.valid?, "#{code} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  # decimals
  test "thing should be valid if decimal is a valid decimal" do
    Things.decimals[:valid].each do |decimal|
      @thing.decimal = decimal
      assert @thing.valid?, "#{decimal} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if decimal is not a valid decimal" do
    Things.decimals[:invalid].each do |decimal|
      @thing.decimal = decimal
      assert !@thing.valid?, "#{decimal} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  # integer
  test "thing should be valid if integer is a valid integer" do
    Things.integers[:valid].each do |integer|
      @thing.integer = integer
      assert @thing.valid?, "#{integer} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if integer is not a valid integer" do
    Things.integers[:invalid].each do |integer|
      @thing.integer = integer
      assert !@thing.valid?, "#{integer} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  # numeric
  test "thing should be valid if numeric is a valid numeric" do
    Things.numeric[:valid].each do |numeric|
      @thing.numeric = numeric
      assert @thing.valid?, "#{numeric} - #{@thing.errors.full_messages.join("\n")}"
    end
  end

  test "thing should be invalid if numeric is not a valid numeric" do
    Things.numeric[:invalid].each do |numeric|
      @thing.numeric = numeric
      assert !@thing.valid?, "#{numeric} - #{@thing.errors.full_messages.join("\n")}"
    end
  end
end
