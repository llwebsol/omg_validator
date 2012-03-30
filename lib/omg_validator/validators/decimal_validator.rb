module OmgValidator
  module Validators
    # Checks whether input is a valid floating point number
    #
    # validates :total_value, decimal: true
    class DecimalValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^[\-+]?[0-9]+\.[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid floating point number"
        end
      end
    end
  end
end

ActiveModel::Validations::DecimalValidator = OmgValidator::Validators::DecimalValidator