require "omg_validator/version"

# OMG Validator
module OmgValidator
  # Validators
  module Validators
    # Nothing to do here...
  end
end

require "omg_validator/validators/alpha_dash_validator"
require "omg_validator/validators/alpha_numeric_validator"
require "omg_validator/validators/alpha_validator"
require "omg_validator/validators/date_validator"
require "omg_validator/validators/decimal_validator"
require "omg_validator/validators/email_validator"
require "omg_validator/validators/integer_validator"
require "omg_validator/validators/numeric_validator"
require "omg_validator/validators/phone_number_validator"
require "omg_validator/validators/postal_code_validator"
require "omg_validator/validators/postal_or_zip_code_validator"
require "omg_validator/validators/zip_code_validator"
