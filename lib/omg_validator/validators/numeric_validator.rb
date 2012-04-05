module OmgValidator
  module Validators
    # Checks whether input is a valid number
    #
    # validates :count, number: true
    #
    # matches: 123, 523.12, -23, -23.12
    # does not match: six, 23.23.12, 1,000
    class NumericValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^[\-+]?[0-9]*\.?[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid number"
        end
      end
    end
  end
end

ActiveModel::Validations::NumericValidator = OmgValidator::Validators::NumericValidator