import Foundation
import DataProviders

extension TransactionObject {
    public static var fake: [TransactionObject] = {
        let json = """
[
    {
        "partnerDisplayName": "REWE Group",
        "alias": {
            "reference": "795357452000810"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-07-24T10:59:05+0200",
            "value": {
                "amount": 124,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "dm-dogerie markt",
        "alias": {
            "reference": "098193809705561"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-06-23T10:59:05+0200",
            "value": {
                "amount": 1240,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "OTTO Group",
        "alias": {
            "reference": "094844835601044"
        },
        "category": 2,
        "transactionDetail": {
            "bookingDate": "2022-07-22T10:59:05+0200",
            "value": {
                "amount": 53,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "OTTO Group",
        "alias": {
            "reference": "554854339484901"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-04-10T10:59:05+0200",
            "value": {
                "amount": 353,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "H&M",
        "alias": {
            "reference": "260531375362238"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-03-25T10:59:05+0200",
            "value": {
                "amount": 43,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "DEPOT",
        "alias": {
            "reference": "112676189944193"
        },
        "category": 2,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-09-22T10:59:05+0200",
            "value": {
                "amount": 75,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "Tchibo",
        "alias": {
            "reference": "623838250608671"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-10-24T10:59:05+0200",
            "value": {
                "amount": 12,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "REWE Group",
        "alias": {
            "reference": "075903074248681"
        },
        "category": 3,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-11-11T10:59:05+0200",
            "value": {
                "amount": 86,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "REWE Group",
        "alias": {
            "reference": "066586128163195"
        },
        "category": 1,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-10-24T10:59:05+0200",
            "value": {
                "amount": 456,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "Aral",
        "alias": {
            "reference": "491779356655580"
        },
        "category": 2,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-12-24T11:59:05+0200",
            "value": {
                "amount": 74,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "Penny-Markt",
        "alias": {
            "reference": "053297453069759"
        },
        "category": 2,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-02-04T10:59:05+0200",
            "value": {
                "amount": 2143,
                "currency": "PBP"
            }
        }
    },
    {
        "partnerDisplayName": "Saturn",
        "alias": {
            "reference": "3083421587504918"
        },
        "category": 2,
        "transactionDetail": {
            "description": "Punkte sammeln",
            "bookingDate": "2022-12-01T10:59:05+0200",
            "value": {
                "amount": 129,
                "currency": "PBP"
            }
        }
    }
]
"""
        guard let data = json.data(using: .utf8) else { return [] }
        return (try? JSONDecoder().decode([Self].self, from: data)) ?? []
    }()
}
