var voter = {
	"type": "account",
    "data": {
      "attributes": {
        "account-type": "individual",
        "admin-email": "peter.wiggen@hegemon.org",
        "contact": {
               "type":"voter",
			   "email": "patricia@example.com",
			   "phone": "555-555-5323",
			    "last-name":"Trie",
                "first-name":"first candidate",
				 "address": {
		   			"city":"Toronto",
		            "postal-code":"N4N2L1",
		            "province-region":"Ontario",
		            "street-address-1":"925 Madison Avenue",
		            "country":"CA"
			   }
	   		}
        }
      }
    }

var candidate = {
	"type": "account",
    "data": {
      "attributes": {
        "account-type": "individual",
        "admin-email": "peter.wiggen@hegemon.org",
        "contact": {
               "type":"candidate",
			   "email": "patricia@example.com",
			   "phone": "555-555-5323",
			    "last-name":"Trie",
                "first-name":"first candidate",
				 "address": {
		   			"city":"Toronto",
		            "postal-code":"N4N2L1",
		            "province-region":"Ontario",
		            "street-address-1":"925 Madison Avenue",
		            "country":"CA"
			   }
	   		}
        }
      }
    }

var vote = {
    data: {
      type: 'file',
      attributes: {
        payload: {
          id: '1a3c1e04-ab62-4c44-b4a3-873f5d50c07d',
          type: 'loyalty-token',
          'member-type': 'gold',
        },
      },
      relationships: {
        'initial-account': {
          data: {
            type: 'account',
            id: '<account-id>',
          },
        },
        'file-type': {
          data: {
            id: '<file-type-id>',
          },
        },
      },
    },
  };

module.exports = {
	voter,
    candidate,
    vote,
};
