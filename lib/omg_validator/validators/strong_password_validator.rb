module OmgValidator
  module Validators
    # Checks whether password input is a strong password
    # Must contain a least one number, one lower case letter and one upper case letter
    #
    # validates :password, strong_password: true
    class StrongPasswordValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = '/^\w*(?=\w*\d)(?=\w*[a-z])(?=\w*[A-Z])\w*$/'
        unless reg.match(value)
          record.errors[attribute] = "must contain at least a number, a lower case letter, and a upper case letter"
        end
      end
    end
  end
end

ActiveModel::Validations::StrongPasswordValidator = OmgValidator::Validators::StrongPasswordValidator