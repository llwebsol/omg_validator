module OmgValidator
  module Validators
    # Checks whether input only contains alphabetic characters
    #
    # @example
    #  validates :name, alpha: true
    #
    # Matches:
    #   alpha, testing, Hello
    #
    # Does not Match:
    #   sub.domain, alpha-dash, id=343, (232)
    class AlphaValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^([a-z])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alphabetic characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaValidator = OmgValidator::Validators::AlphaValidator