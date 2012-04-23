module OmgValidator
  module Validators
    # Checks whether input is a valid IP Address
    #
    # validates :ip_address, ip_adress: true
    #
    # matches: 101.101.102.123, 9.199.22.212, 255.255.255.0, 127.0.0.1
    # does not match: 101.101.102.565, 255.256.256.0, 90.0.0, 12.12.54.34.123
    class IpAddressValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$\b/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid IP address"
        end
      end
    end
  end
end

ActiveModel::Validations::IpAddressValidator = OmgValidator::Validators::IpAddressValidator