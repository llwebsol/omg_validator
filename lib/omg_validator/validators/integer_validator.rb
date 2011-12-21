module OmgValidator
  module Validators
    class IntegerValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^[\-+]?[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid integer"
        end
      end
    end
  end
end

ActiveModel::Validations::IntegerValidator = OmgValidator::Validators::IntegerValidator