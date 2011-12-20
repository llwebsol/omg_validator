module OmgValidator
  module Validators
    class DateValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        begin
          Date.parse(value)
        rescue
          record.errors[attribute] << "must be a valid date"
        end
      end
    end
  end
end

ActiveModel::Validations::DateValidator = OmgValidator::Validators::AlphaValidator