module OmgValidator
  module Validators
    class DateValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        begin
          Date.parse(value)
        rescue
          record.errors[attribute] = "must be a valid date"
        end
      end
    end
  end
end

ActiveModel::Validations::DateValidator = OmgValidator::Validators::AlphaValidator