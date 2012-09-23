module OmgValidator
  module Validators
    # Checks whether input is a valid email address
    #
    # @example
    #   validates :email, email: true
    #
    # Matches:
    #   email@domain.com, my_user@domain.edu.org, sub.domain@ohyeah.com
    #
    # Does not match:
    #   mail@you@rock.com, domain.com
    class EmailValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid email address"
        end
      end
    end
  end
end

ActiveModel::Validations::EmailValidator = OmgValidator::Validators::EmailValidator