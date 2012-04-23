module OmgValidator
  module Validators
    # Checks whether input is a valid zip code
    #
    # validates :zip_code, zip_code: true
    #
    # matches: 90210, 20037-8001, 12345
    # does not match: 123456, 20037-001, 207-01
    class ZipCodeValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^\d{5}(-\d{4})?$/i
        unless reg.match(value)
          record.errors[attribute] = "must be a valid zip code"
        end
      end
    end
  end
end

ActiveModel::Validations::ZipCodeValidator = OmgValidator::Validators::ZipCodeValidator