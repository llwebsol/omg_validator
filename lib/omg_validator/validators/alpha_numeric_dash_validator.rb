module OmgValidator
  module Validators
    # Checks whether input only contains alpha-numeric characters and dashes.
    #
    # @example
    #   validates :perma_link, alpha_numeric_dash: true
    #
    # Matches:
    #   alpha-num21, alpha-dash, testing, hello-world2
    #
    # Does not Match:
    #   sub.domain, alpha_score
    class AlphaNumericDashValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^([-a-z0-9_-])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters and dashes"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaNumericDashValidator = OmgValidator::Validators::AlphaNumericDashValidator