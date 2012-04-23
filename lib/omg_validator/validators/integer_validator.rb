module OmgValidator
  module Validators
    # Checks whether input is a valid integer
    #
    # validates :count, integer: true
    #
    # matches: 10, 20, 2323, -20, 10000000,
    # does not match: 10.50, -22.21, 1,000, ten
    class IntegerValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^[\-+]?[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid integer"
        end
      end
    end
  end
end

ActiveModel::Validations::IntegerValidator = OmgValidator::Validators::IntegerValidator