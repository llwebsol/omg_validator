class Things
  def self.postal_code
    {
      valid: "L2J 4T5",
      invalid: "LL2J 4T5"
    }
  end
  
  def self.zip_code
    {
      valid: "90210",
      invalid: "902100"
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