#!/usr/bin/env bash

PORT=5000
echo "Port: $PORT"

# POST method predict
curl -d '{  
   "MedInc":{  
      "0":8.32
   },
   "HouseAge":{  
      "0":41.0
   },
   "AveRooms":{  
      "0":6.98
   },
   "AveBedrms":{  
      "0":1.02
   },
   "Population":{  
      "0":322.0
   },
   "AveOccup":{  
      "0":2.55
   },
   "Latitude":{  
      "0":37.88
   },
   "Longitude":{  
      "0":-122.23
   }
}'\
     -H "Content-Type: application/json" \
     -X POST http://localhost:$PORT/predict