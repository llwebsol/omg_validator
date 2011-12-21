module OmgValidator
  module Validators
    class UrlValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        reg = '`.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i'
        unless reg.match(value)
          record.errors[attribute] << "must be a valid url"
        end
      end
    end
  end
end

ActiveModel::Validations::UrlValidator = OmgValidator::Validators::UrlValidator