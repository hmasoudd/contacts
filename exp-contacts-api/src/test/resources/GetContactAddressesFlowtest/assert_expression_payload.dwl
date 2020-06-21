%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    "id": 103,
    "number": 345,
    "unit": null,
    "city": "Pittsburg",
    "addressType": "HOME",
    "street": "Main Road W",
    "postalCode": "10012",
    "state": "PA"
  },
  {
    "id": 115,
    "number": 3333,
    "unit": "one",
    "city": "Dallas",
    "addressType": "HOME",
    "street": "Queen St W",
    "postalCode": "10012",
    "state": "TX"
  },
  {
    "id": 117,
    "number": 3333,
    "unit": "two",
    "city": "King",
    "addressType": "HOME",
    "street": "Atlanta St W",
    "postalCode": "54321",
    "state": "NC"
  }
])