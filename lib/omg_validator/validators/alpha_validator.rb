module OmgValidator
  module Validators
    # Checks whether input only contains alphabetic characters
    #
    # validates :name, alpha: true
    class AlphaValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^([a-z])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alphabetic characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaValidator = OmgValidator::Validators::AlphaValidator