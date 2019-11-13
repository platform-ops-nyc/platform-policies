package main

test_deny_credhub_suite{
  deny_if_not_exactly_one_primary with input as pasKey
  deny_not_enough_chars with input as pasKey
}

pasKey = {
  "product-properties": {
    ".properties.credhub_hsm_provider_partition_password": {
      "value": [
        {
          "primary": true
        }
      ]
    },
    ".properties.credhub_key_encryption_passwords": {
      "value": [
        {
          "primary": "1234567890123456789"
        }
      ]
    }
  }
}