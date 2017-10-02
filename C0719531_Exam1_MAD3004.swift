//: Playground - noun: a place where people can play

import UIKit

//CLASS MANUFACTURER
class Manufacturer {

    var manufacturerId:Int = Int()
    
    var manufacturerName:String = String()

    init() {
        self.manufacturerId = 1
        self.manufacturerName = ""
    }

    init(manufId:Int, manufName:String) {
        self.manufacturerId = manufId
        self.manufacturerName = manufName
    }

    func printDetails() {
        print("Manufacturer Id is : \(self.manufacturerId)")
        print("Manufacturer Name is : \(self.manufacturerName)")
    }
}

//CLASS PRODUCT
class Product : Manufacturer {

    var productId:Int = Int()
    var productName:String = String()
    var price:Float = Float()
    var quantity:Int = Int()

    override init() {
        super.init()
        self.productId = 1
        self.productName = ""
        self.price = 0
        self.quantity = 0
    }

    init(manufId:Int, manufName:String,productId:Int,productName:String,price:Float,quantity:Int) {
        super.init(manufId: manufId, manufName: manufName)
        self.productId = productId
        self.productName = productName
        self.price = price
        self.quantity = quantity
    }
    
    func updateQuantity(newQuantity:Int) {
        self.quantity = self.quantity + newQuantity
    }
    
    override func printDetails() {
        if self.productName == "ZIP drive" || self.productName == "Monitor" {
            print("\t\t\(self.manufacturerId)\t\t\t\t\(self.manufacturerName)\t\t\t\t\(self.productId)\t\t  \(self.productName)\t\t\t    \(self.price)\t\t\t\(self.quantity)")
        }
        else {
            print("\t\t\(self.manufacturerId)\t\t\t\t\(self.manufacturerName)\t\t\t\t\(self.productId)\t\t  \(self.productName)\t\t\t\(self.price)\t\t\t\(self.quantity)")
        }
//        print("Manufacturer Id is : \(self.manufacturerId)")
//        print("Manufacturer Name is : \(self.manufacturerName)")
//        print("Product Id is : \(self.productId)")
//        print("Product Name is \(self.productName)")
//        print("Product price is : \(self.price)")
//        print("Product quantity is : \(self.quantity)")
    }
}

//CLASS ORDER
class Order {
    
    var orderId:Int = Int()
    var orderDate:Date = Date()
    var arrayProducts:[Product] = [Product]()
    var orderTotal:Float = Float()
    
    init() {
        self.orderId = 1
        self.orderDate = Date()
        self.arrayProducts = [Product]()
        self.orderTotal = 0
    }
    
    init(orderId:Int,orderDate:Date,arrayProducts:[Product],orderTotal:Float) {
        self.orderId = orderId
        self.orderDate = orderDate
        self.arrayProducts = arrayProducts
        self.orderTotal = orderTotal
    }
    
    func orderDetails() {
        print("*************************************** ORDER DETAILS ***************************************")
        print("Order Id is : \(self.orderId)")
        print("Order Date is : \(self.orderDate)")
        print("************************************* PRODUCTS DETAILS **************************************")
        print("MANUFACTURER ID  MANUFACTURER NAME   PRODUCT ID  PRODUCT NAME           PRICE        QUANTITY")
        for product in self.arrayProducts {
            product.printDetails()
        }
        print("*********************************************************************************************")
        print("Order Total is : \(self.orderTotal)")
    }
    
    //CALCULATING ORDER TOTAL
    func calculateOrderTotal() {
        var finalOrderTotal:Float = 0.0
        for product in arrayProducts {
            finalOrderTotal = finalOrderTotal + (product.price * Float(product.quantity))
        }
        self.orderTotal = finalOrderTotal
    }
    
    //DICTIONARY ORDERS
    static var dictOrders:[Int:Order] = [order1.orderId:order1, order2.orderId:order2, order3.orderId:order3]
    
    //GET ORDER DETAILS BY USING ITS ORDER ID
    static func getOrderById(orderId:Int) -> Order {
        
        if let order = dictOrders[orderId] {
            return order as Order
        }
        else {
            return Order()
        }
        
    }

    //ADD PRODUCT (if product is already exist then update quantity)
//    func addProduct(prod:Product) {
//        var isProductAdded:Bool = Bool()
//        for index in self.arrayProducts.indices {
//            if self.arrayProducts[index] == prod {
//                var updatedProduct = self.arrayProducts[index]
//                updatedProduct.updateQuantity(newQuantity: prod.quantity)
//                self.arrayProducts[index] = updatedProduct
//                isProductAdded = true
//            }
//        }
//        if isProductAdded == false {
//            self.arrayProducts.append(prod)
//        }
//    }

    //REMOVE PRODUCT
    func removeProduct(productId:Int) {
        var arrayNewProducts:[Product] = [Product]()
        for product in self.arrayProducts {
            if product.productId != productId {
                arrayNewProducts.append(product)
            }
        }
        self.arrayProducts = arrayNewProducts
    }
}


//CREATING PRODUCT OBJECTS
var p1:Product = Product.init(manufId: 1, manufName: "ABC", productId: 100, productName: "Hard drive", price: 120.0, quantity: 1)
var p2:Product = Product.init(manufId: 2, manufName: "XYZ", productId: 200, productName: "ZIP drive", price: 90.0, quantity: 2)
var p3:Product = Product.init(manufId: 3, manufName: "PQR", productId: 300, productName: "Floppy disk", price: 50.0, quantity: 3)
var p4:Product = Product.init(manufId: 4, manufName: "LMN", productId: 400, productName: "Monitor", price: 300.0, quantity: 4)
var p5:Product = Product.init(manufId: 5, manufName: "OPQ", productId: 500, productName: "iPhone 7 Plus", price: 1200.0, quantity: 2)

//CREATING ORDER 1
var order1:Order = Order.init(orderId: 1, orderDate: Date(), arrayProducts: [p1,p2,p3], orderTotal: 0)
order1.calculateOrderTotal()
order1.orderDetails()

//CREATING ORDER 2
var order2:Order = Order.init(orderId: 2, orderDate: Date(), arrayProducts: [p2,p3,p4,p5], orderTotal: 0)
order2.calculateOrderTotal()
order2.orderDetails()

//CREATING ORDER 3
var order3:Order = Order.init(orderId: 3, orderDate: Date(), arrayProducts: [p1,p2,p3,p4,p5], orderTotal: 0)
order3.calculateOrderTotal()
order3.orderDetails()

p2.quantity = 3

var order4:Order = Order.init(orderId: 4, orderDate: Date(), arrayProducts: [p1,p2], orderTotal: 0)
order4.calculateOrderTotal()
order4.orderDetails()

print("\n\n*********************** MY ORDER *******************************************************")
var myOrder = Order.getOrderById(orderId: 1)
print(myOrder.orderDetails())


