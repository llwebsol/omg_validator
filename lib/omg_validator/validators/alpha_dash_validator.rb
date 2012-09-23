module OmgValidator
  module Validators
    # Checks whether input only contains alpha characters and dashes.
    #
    # @example
    #  validates :perma_link, alpha_dash: true
    #
    # Matches:
    #   hello, hello-world
    #
    # Does not Match:
    #   hello world!, hello_world
    class AlphaDashValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^([-a-z_-])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha characters and dashes"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaDashValidator = OmgValidator::Validators::AlphaDashValidator