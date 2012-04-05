module OmgValidator
  module Validators
    # Checks whether input only contains alpha-numberic characters
    #
    # validates :title, alpha_numberic: true
    #
    # matches: alpha23, Testing, 343, hello,
    # does not match: 324-343, alpha-dash, id=343, (232)
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