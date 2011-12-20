module OmgValidator
  module Validators
    class NumericValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /^[\-+]?[0-9]*\.?[0-9]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid number"
        end
      end
    end
  end
end

ActiveRecord::Validations::NumericValidator = OmgValidator::Validators::NumericValidator