# OmgValidator

OmgValidator is a collection of custom validators for Rails 3.x. These are simple validators that mostly use regular expressions for common validation requirements, including:

* Alpha-dash characters
* Alphanumeric characters
* Alpha characters
* Dates
* Email addresses
* IP addresses
* US and Canadian (or compatible) Phone numbers
* US and Canadian (or compatible) Postal/Zip Codes
* Strong passwords
* URL
* US (or compatible) Zip Code

Using the gem is easy. Just add it to your gemfile.

  gem "omg_validator", "~> 0.0.8"

Run bundle install and then use them in your models. For example:

  validates :postal_code, postal_or_zip_code: true

Think of this package as a swiss army knife for your validation needs. It larges replaces the need to use validates_format_of validation helper method.

### Contributors

* Nickolas Kenyeres
* Michael Mottola

### How to Contribute

This project is in active development. We are using it in real world projects; some parts work well, and others need more work. In other words; test it before using it.

We released it hoping that others would find it useful. We encourage you to fork the project and improve on it. We would be most gracious if you send a pull request with your modifications. We will include you in the list of contributors unless you request to not be listed. 

The source code for this project is here: https://github.com/llwebsol/OmgValidators. 

### License

Copyright (c) 2011-2012 Nickolas Kenyeres, Michael Mottola.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.