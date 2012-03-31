require 'active_model'

class Thing
  include ActiveModel::Validations
  
  attr_accessor :zip_code, :postal_or_zip_code
  
  validates :zip_code, zip_code: true
  validates :postal_or_zip_code, postal_or_zip_code: true
  
  def initialize(options = {})
    @zip_code = options[:zip_code] unless options[:zip_code].nil?
    @postal_or_zip_code = options[:postal_or_zip_code] unless options[:postal_or_zip_code].nil?
  end
end