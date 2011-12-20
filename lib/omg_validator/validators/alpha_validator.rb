module OmgValidator
  module Validators
    class AlphaValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /^([a-z])+$/i
        unless reg.match(value)
          record.errors[attribute] << "must contain only alphabetic characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaValidator = OmgValidator::Validators::AlphaValidator