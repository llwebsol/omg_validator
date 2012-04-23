module OmgValidator
  module Validators
    # Checks whether input only contains alpha-numberic characters and dashes
    #
    # validates :perma_link, alpha_dash: true
    #
    # matches: alpha-dash-23, ll2-ada, 343, Dfsdf, -,
    # does not match: $10.00, sub.domain, id=343, (232)
    class AlphaDashValidator < ActiveModel::EachValidator
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

ActiveModel::Validations::AlphaDashValidator = OmgValidator::Validators::AlphaDashValidator