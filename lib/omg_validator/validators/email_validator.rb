module OmgValidator
  module Validators
    class EmailValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
        unless reg.match(value)
          record.errors[attribute] << "must be a valid email address"
        end
      end
    end
  end
end

ActiveModel::Validations::EmailValidator = OmgValidator::Validators::EmailValidator