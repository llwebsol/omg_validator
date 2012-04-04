module OmgValidator
  module Validators
    # Checks whether input is a valid IP Address
    #
    # validates :ip_address, ip_address: true
    class IpAddressValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.nil?
        reg = '/\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b/'
        unless reg.match(value)
          record.errors[attribute] = "must be a valid IP address"
        end
      end
    end
  end
end

ActiveModel::Validations::IpAddressValidator = OmgValidator::Validators::IpAddressValidator