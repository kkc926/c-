from pymongo import MongoClient
from datetime import datetime
import random
db_client = MongoClient("mongodb://172.30.1.34:27017/")
iot_db=db_client['iot_service']
sensors_col = iot_db['sensors']

sensor_value = {
    "topic" :"iot/home1/device1/temp",
    "value" : 24 + random.random(),
    "reg_date" :datetime.utcnow()
}

x=sensors_col.insert_one(sensor_value)

print(x.inserted_id)
