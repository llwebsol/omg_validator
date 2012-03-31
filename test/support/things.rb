class Things
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
end