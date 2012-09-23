module OmgValidator
  module Validators
    # Checks whether input is a valid postal code
    #
    # @example
    #   validates :postal_code, postal_code: true
    #
    # Matches:
    #   L2J 4T5, l2a 9d1, h2o 4g1, h2o4g1
    #
    # Does not match:
    #   z2n 1n3, aan 2j2, LL2J 4T5, 5j4 f1d
    class PostalCodeValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$/i
        unless reg.match(value)
          record.errors[attribute] = "must be a valid postal code"
        end
      end
    end
  end
end

ActiveModel::Validations::PostalCodeValidator = OmgValidator::Validators::PostalCodeValidator