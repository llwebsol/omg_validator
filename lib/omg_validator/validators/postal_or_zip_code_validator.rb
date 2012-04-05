module OmgValidator
  module Validators
    # Checks whether input is a valid postal code or a valid zip code
    #
    # validates :zip_code, postal_or_zip_code: true
    #
    # matches: L2J 4T5, l2a 9d1, h2o 4g1, h2o4g1, 90210, 20037-8001, 12345
    # does not match: z2n 1n3, aan 2j2, LL2J 4T5, 123456, 20037-001, 207-01
    class PostalOrZipCodeValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)/i
        unless reg.match(value)
          record.errors[attribute] = "must be a valid postal or zip code"
        end
      end
    end
  end
end

ActiveModel::Validations::PostalOrZipCodeValidator = OmgValidator::Validators::PostalOrZipCodeValidator