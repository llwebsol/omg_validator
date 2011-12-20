module OmgValidator
  module Validators
    class PostalOrZipCodeValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)/i
        unless reg.match(value)
          record.errors[attribute] = "must be a valid postal or zip code"
        end
      end
    end
  end
end

ActiveModel::Validations::PostalOrZipCodeValidator = OmgValidator::Validators::PostalOrZipCodeValidator