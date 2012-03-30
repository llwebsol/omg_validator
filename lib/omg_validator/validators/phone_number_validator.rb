module OmgValidator
  module Validators
    # Checks whether input is a valid phone number
    # Currently only supports American and Canadian formats
    #
    # validates :phone, phone_number: true
    class PhoneNumberValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid phone number"
        end
      end
    end
  end
end

ActiveModel::Validations::PhoneNumberValidator = OmgValidator::Validators::PhoneNumberValidator