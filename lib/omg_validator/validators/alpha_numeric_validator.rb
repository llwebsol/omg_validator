module OmgValidator
  module Validators
    # Checks whether input only contains alpha-numeric characters
    #
    # @example
    #   validates :title, alpha_numeric: true
    #
    # Matches:
    #   alpha23, Testing, 343, hello
    #
    # Does not match:
    #   324-343, alpha-dash, id=343, (232)
    class AlphaNumericValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^([a-z0-9])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaNumericValidator = OmgValidator::Validators::AlphaNumericValidator