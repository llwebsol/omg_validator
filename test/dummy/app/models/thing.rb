require 'active_model'

class Thing
  include ActiveModel::Validations
  
  attr_accessor :alpha_numeric, :alpha_dash, :zip_code, :postal_or_zip_code
  
  validates :alpha_numeric, alpha_numeric: true
  validates :alpha_dash, alpha_dash: true
  validates :zip_code, zip_code: true
  validates :postal_or_zip_code, postal_or_zip_code: true
  
  def initialize(options = {})
    @alpha_numeric = options[:alpha_numeric] unless options[:alpha_numeric].nil?
    @alpha_dash = options[:alpha_dash] unless options[:alpha_dash].nil?
    @zip_code = options[:zip_code] unless options[:zip_code].nil?
    @postal_or_zip_code = options[:postal_or_zip_code] unless options[:postal_or_zip_code].nil?
  end
end