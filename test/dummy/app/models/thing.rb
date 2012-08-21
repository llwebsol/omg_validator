require 'active_model'

class Thing
  include ActiveModel::Validations

  attr_accessor :alpha, :alpha_numeric, :alpha_numeric_dash, :alpha_dash, :zip_code, :postal_or_zip_code, :postal_code,
    :decimal, :integer, :numeric, :email, :ip_address, :url, :phone, :password

  validates :alpha, alpha: true
  validates :alpha_numeric, alpha_numeric: true
  validates :alpha_numeric_dash, alpha_numeric_dash: true
  validates :alpha_dash, alpha_dash: true
  validates :zip_code, zip_code: true
  validates :postal_or_zip_code, postal_or_zip_code: true
  validates :postal_code, postal_code: true
  validates :decimal, decimal: true
  validates :integer, integer: true
  validates :numeric, numeric: true
  validates :email, email: true
  validates :ip_address, ip_address: true
  validates :url, url: true
  validates :phone, phone_number: true
  validates :password, strong_password: true

  def initialize(options = {})
    @alpha = nil
    @alpha_numeric = nil
    @alpha_numeric_dash = nil
    @alpha_dash = nil
    @zip_code = nil
    @postal_or_zip_code = nil
    @postal_code = nil
    @decimal = nil
    @integer = nil
    @numeric = nil
    @email = nil
    @ip_address = nil
    @url = nil
    @phone = nil
    @password = nil
  end
end