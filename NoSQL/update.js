//update data
db.customer_reviews.updateOne(
    { "customer_id": 12345, "dish_name": "Pizza" },
    { $set: { "rating": 5, "comment": "Now it's perfect!" } }
  );

db.customer_orders.updateOne(
    { "order_id": 1 },
    { $push: { "items": { "dish_name": "Salad", "quantity": 1, "price": 6 } } }
  );