package main

test_deny_credhub_suite{
  deny_if_not_exactly_one_primary with input as pasKey
  deny_not_enough_chars with input as pasKey
}

pasKey = {
    ".properties.credhub_key_encryption_passwords": {
      "value": [
        {
          "primary": true,
          "key": {
            "secret": "1234567890123456789"
          }
        }
      ]
    }
  }

