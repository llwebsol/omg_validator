module OmgValidator
  module Validators
    # Checks whether input is a valid URL
    # Supports the protocols: http, https and ftp
    #
    # validates :url, url: true
    #
    # matches: http://www.example.com, www.example.com, example.com, sub.example.com
    # does not match: @asd.com, domain.c, domain.asd., amasd@asd.com.a
  class UrlValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        return nil if value.blank?
        reg = /^((https?):\/\/)?([a-z\d]+([\-\.][a-z\d]+)*\.[a-z]{2,6})((:(\d{1,5}))?(\/.*)?)?$/
        unless reg.match(value)
          record.errors[attribute] = "must be a valid url"
        end
      end
    end
  end
end

ActiveModel::Validations::UrlValidator = OmgValidator::Validators::UrlValidator