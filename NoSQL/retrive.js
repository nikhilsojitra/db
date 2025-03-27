//retrive data
db.customer_reviews.find({ "dish_name": "Pizza" });

db.customer_orders.find({ "table_number": 5 });

db.customer_orders.find({ "total_amount": { $gt: 30 } });

db.customer_reviews.find().sort({ "timestamp": -1 }).limit(5);