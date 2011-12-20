module OmgValidator
  module Validators
    class AlphaNumericValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /^([a-z0-9])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaNumericValidator = OmgValidator::Validators::AlphaNumericValidator

# Checks if a string conforms to a valid alpha-numeric format (e.g. ABC123).
class OmgAlphaNumericValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    reg = /^([a-z0-9])+$/i
    unless reg.match(value)
      record.errors[attribute] = "must contain only alpha-numeric characters"
    end
  end
end

module OmgValidator
  module Valicators
    class AlphaDashValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = /^([-a-z0-9_-])+$/i
        unless reg.match(value)
          record.errors[attribute] = "must contain only alpha-numeric characters and dashes"
        end
      end
    end
  end
end

ActiveModel::Validations::AlphaDashValidator = OmgValidator::Validators::AlphaDashValidator