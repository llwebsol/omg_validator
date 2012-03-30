module OmgValidator
  module Validators
    # Checks whether input is a valid email address
    #
    # validates :email, email: true
    class EmailValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid email address"
        end
      end
    end
  end
end

ActiveModel::Validations::EmailValidator = OmgValidator::Validators::EmailValidator