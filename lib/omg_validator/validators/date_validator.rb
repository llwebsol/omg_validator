module OmgValidator
  module Validators
    # Checks whether input is a valid date
    #
    # validates :posting_date, date: true
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