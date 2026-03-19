// OP1: insertMany()
debugger.products.insertMany([
    {
        name: "laptop",
        category: "electronics",
        price: 30000
    },
    {
        name: "shirt",
        category: "clothing",
        price: 1000
    },
    {
        name: "milk",
        category: "grocery",
        price: 50,
        expiry_date: "2025-01-01"
    }
]);
// OP2: find electronics price > 3000
db.products.find({
    category: "electronics",
    price: {$gt:2000}
});
// OP3: find expiring  before 2025-01-01
db.products. find({
    category: "groceries",
    expiry_date: {$lt: "2025-01-01"}
});
// OP4: updateOne()
db.products.updateOne(
    {name: "laptop"},
    {$set: {discount_percent: 10 } }
);
// OP5: createIndex()
db.products.createIndex({category:1 });


    
    

    
