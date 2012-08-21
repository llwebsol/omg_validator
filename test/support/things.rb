require 'yaml'

class Things
  def initialize
    @config = YAML.load_file("#{File.dirname(__FILE__)}/things.yml")
  end

  def alpha_dash
    @config['alpha_dash']
  end

  def alpha_numeric
    @config['alpha_numeric']
  end

  def alpha_numeric_dash
    @config['alpha_numeric_dash']
  end

  def decimal
    @config['decimal']
  end

  def email
    @config['email']
  end

  def integer
    @config['integer']
  end
end