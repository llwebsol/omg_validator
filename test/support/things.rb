class Things
  def self.alphas
    {
      valid: [
          "a",
          "aZ",
          "AZ",
          "az"
        ],
      invalid: [
          "0",
          "9",
          "a z",
          "A_z",
          "A-Z",
          "a0z"
        ]
    }
  end

  def self.alpha_dashes
    {
      valid: [
          "azqy",
          "az-qy",
          "AZ-qy",
          "01-qy",
          "01_qy",
          "01001",
          "-----"
        ],
      invalid: [
          "#",
          " ",
          "az qy",
          "az#qy",
          "01 qy",
          "01#qy"
        ]
    }
  end

  def self.alpha_numerics
    {
      valid: [
          "azqy",
          "az99",
          "AZqy",
          "AZQY",
          "AZ99",
          "0099"
        ],
      invalid: [
          "a qy",
          "a-qy",
          "a_qy",
          "a#qy",
          "A9-y",
          "9 99"
        ]
    }
  end

  def self.postal_codes
    {
      valid: [
          "L2J 4T5",
          "l2j 4t5",
          "l2j4t5"
        ],
      invalid: [
          "L2%4T5",
          "LL2J 4T5",
          "L2J45T",
          "L2j   45T"
        ]
    }
  end

  def self.zip_codes
    {
      valid: [
          "90210",
          "20037-8001"
        ],
      invalid: [
          "9021",
          "902100",
          "9O210",
          "200037-801",
          "2000378001"
        ]
    }
  end

  def self.decimal
    {
        valid: [
            "10",
            "23.23",
            "1.23",
            "100.00"
        ],
        invalid: [
            "20..00",
            "210.02.22",
            "9O210",
            "237-841",
        ]
    }
  end

  def self.email
    {
        valid: [
        "user@domain.com",
        "my_user@domain.on.ca",
        "mail@hoemail.net"
    ],
        invalid: [
        "@asd.com",
        "mail@you@rock.com",
        "myemailaddress.com",
        "myemailaddress",
        "amasd@asd.com.a",
    ]
    }
  end

  def self.integer
    {
        valid: [
            "10",
            "23",
            "154",
            "134256"
        ],
        invalid: [
            "20..00",
            "210.02.22",
            "9O2.10",
            "237-841",
        ]
    }
  end

  def self.ip_address
    {
        valid: [
            "120.20.123.123",
            "255.255.255.0",
            "127.0.0.1",
            "100.1.123.254"
        ],
        invalid: [
            "2.0.0.0.0",
            "123-123-23-",
            "123 23 23 24",
            "41.34.52",
        ]
    }
  end

  def self.decimal
    {
        valid: [
            "10",
            "23.23",
            "1.23",
            "100.00"
        ],
        invalid: [
            "20..00",
            "210.02.22",
            "9O210",
            "237-841",
        ]
    }
  end

  def self.phone_number
    {
        valid: [
            "123-123-1240",
            "123-123-0123",
            "(123) 232-1232",
            "(123) 123 2356"
        ],
        invalid: [
            "1323-23-123",
            "213-2323-122",
            "923210",
            "easd841",
            "123-123-23233",
        ]
    }
  end

  def self.strong_password
    {
        valid: [
            "ASdj3j3jsS",
            "8#adCje30",
            "To34zNbsr30",
            "pwd#fdJa9"
        ],
        invalid: [
            "password",
            "Testing",
            "password23",
            "3434ksdlfk3",
            "1afs3l3",
        ]
    }
  end

  def self.url
    {
        valid: [
            "http://example.com",
            "www.example.com",
            "example.com",
            "sub.example.com",
            "sub.example.com?id=3423",
        ],
        invalid: [
            "@asd.com",
            "domain.c",
            "mydomain",
            "domain..asd.",
            "amasd@asd.com.a",
        ]
    }
  end
end