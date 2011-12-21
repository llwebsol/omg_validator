module OmgValidator
  module Validators
    class AlphaDashValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = /^([-a-z0-9_-])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters and dashes"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaDashValidator = OmgValidator::Validators::AlphaDashValidator