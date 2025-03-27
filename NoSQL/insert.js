//insert data

db.customer_reviews.insertMany([
    {
      "customer_id": 12345,
      "dish_name": "Pizza",
      "rating": 4,
      "comment": "Great taste, but could use more cheese!",
      "timestamp": new ISODate("2025-03-27T14:00:00Z")
    },
    {
      "customer_id": 67890,
      "dish_name": "Burger",
      "rating": 5,
      "comment": "Absolutely delicious!",
      "timestamp": new ISODate("2025-03-26T15:30:00Z")
    }
  ]);

  
  db.customer_orders.insertMany([
    {
      "order_id": 1,
      "waiter_id": 101,
      "table_number": 5,
      "items": [
        { "dish_name": "Pizza", "quantity": 2, "price": 12 },
        { "dish_name": "Pasta", "quantity": 1, "price": 8 }
      ],
      "total_amount": 32,
      "timestamp": new ISODate("2025-03-27T12:30:00Z")
    },
    {
      "order_id": 2,
      "waiter_id": 102,
      "table_number": 3,
      "items": [
        { "dish_name": "Burger", "quantity": 1, "price": 10 },
        { "dish_name": "Fries", "quantity": 1, "price": 5 }
      ],
      "total_amount": 15,
      "timestamp": new ISODate("2025-03-26T13:45:00Z")
    }
  ]);