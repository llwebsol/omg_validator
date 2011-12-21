module OmgValidator
  module Validators
    class AlphaNumericValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^([a-z0-9])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaNumericValidator = OmgValidator::Validators::AlphaNumericValidator