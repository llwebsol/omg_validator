module OmgValidator
  module Validators
    # Checks whether input is a valid floating point number
    #
    # validates :total_value, decimal: true
    #
    # matches: 10.00, -23.12, 9.99, 1.9002302
    # does not match: 123, 99, -23, 1,000
    class DecimalValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^[\-+]?[0-9]+\.[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid floating point number"
        end
      end
    end
  end
end

ActiveModel::Validations::DecimalValidator = OmgValidator::Validators::DecimalValidator