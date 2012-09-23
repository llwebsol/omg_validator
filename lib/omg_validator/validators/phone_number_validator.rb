module OmgValidator
  module Validators
    # Checks whether input is a valid phone number
    # Currently only supports American and Canadian formats
    #
    # @example
    #   validates :phone, phone_number: true
    #
    # Matches:
    #   2342343423, 1-800-232-1232, 100-232-2322, 1905-232-2323
    #
    # Does not match:
    #   3434343434343, 333333333, 905-232-23239, (111) 232-2322
    class PhoneNumberValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^(\d[ -\.]?)?(\d{3}[ -\.]?)?\d{3}[ -\.]?\d{4}(x\d+)?$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid phone number"
        end
      end
    end
  end
end

ActiveModel::Validations::PhoneNumberValidator = OmgValidator::Validators::PhoneNumberValidator