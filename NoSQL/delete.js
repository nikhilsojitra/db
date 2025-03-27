//delete data
db.customer_reviews.deleteOne({ "customer_id": 12345, "dish_name": "Pizza" });

db.customer_orders.deleteMany({ "table_number": 5 });