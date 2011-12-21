module OmgValidator
  module Validators
    class ZipCodeValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^\d{5}(-\d{4})?$/i
        unless reg.match(value)
          record.errors[attribute] = "must be a valid zip code"
        end
      end
    end
  end
end

ActiveModel::Validations::ZipCodeValidator = OmgValidator::Validators::ZipCodeValidator