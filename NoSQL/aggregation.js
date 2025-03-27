//Aggregation 
db.customer_reviews.aggregate([
    { $match: { "dish_name": "Pizza" } },
    { $group: { "_id": "$dish_name", "average_rating": { $avg: "$rating" } } }
  ]);

db.customer_orders.aggregate([
    { $unwind: "$items" },
    { $group: { "_id": "$items.dish_name", "total_sales": { $sum: "$items.quantity" } } },
    { $sort: { "total_sales": -1 } }
  ]);

db.customer_orders.aggregate([
    { $unwind: "$items" },
    { $group: { "_id": null, "total_revenue": { $sum: "$total_amount" } } }
  ]);

db.customer_orders.aggregate([
    { $unwind: "$items" },
    { $group: { "_id": "$items.dish_name", "total_orders": { $sum: "$items.quantity" } } },
    { $sort: { "total_orders": -1 } },
    { $limit: 1 }
  ]);
