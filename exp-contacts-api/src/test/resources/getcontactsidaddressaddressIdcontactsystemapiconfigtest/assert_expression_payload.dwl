%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "id": 101,
  "number": 16,
  "unit": null,
  "city": "Toronto",
  "addressType": "WORK",
  "street": "Brookline St",
  "postalCode": "10033",
  "state": "NY"
})