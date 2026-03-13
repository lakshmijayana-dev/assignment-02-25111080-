// Q1
db.customers.find()

// Q2
db.orders.find({ status: "completed" })

// Q3
db.orders.aggregate([
  { $group: { _id: "$customer_id", total_orders: { $sum: 1 } } }
])
