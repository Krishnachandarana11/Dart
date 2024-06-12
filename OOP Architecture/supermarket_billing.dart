import 'dart:io';

class Product     
{
  int prod_id;
  String prod_name;
  double prod_price;

  Product(this.prod_id, this.prod_name, this.prod_price);
}
class Customer 
{
  int cust_id;
  String cust_name;
  String cust_contact;
  List<Map<String, dynamic>> cart = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact);

  void addProductToCart(Product product, int quantity)
  {
    cart.add({
      'pro_id': product.prod_id,
      'pro_name': product.prod_name,
      'pro_qty': quantity,
      'pro_price': product.prod_price * quantity
    });
  }
  double calculateTotal() 
  {
    return cart.fold(0, (sum, item) => sum + item['pro_price']);
  }
  double calculateDiscountedTotal()
  {
    double total = calculateTotal();
    double discount = 0;

    if (total > 500 && total <= 1500)
    {
      discount = total * 0.10;
    } else if (total > 1500 && total <= 3500) 
    {
      discount = total * 0.20;
    } else if (total > 3500 && total <= 6500) 
    {
      discount = total * 0.25;
    } else if (total > 6500) {
      discount = total * 0.30;
    }

    return total - discount;
  }

  double calculateDiscount() 
  {
    double total = calculateTotal();
    if (total > 500 && total <= 1500) 
    {
      return total * 0.10;
    } else if (total > 1500 && total <= 3500) 
    {
      return total * 0.20;
    } else if (total > 3500 && total <= 6500) 
    {
      return total * 0.25;
    } else if (total > 6500)
    {
      return total * 0.30;
    }
    return 0;
  }
}

void main() 
{
  List<Customer> customers = [];
  List<Product> products = [
    Product(1, 'Apple', 80.0),
    Product(2, 'Grapes', 55.0),
    Product(3, 'Pineapple', 70.0),
    Product(4, 'Curd', 50.0),
    Product(5, 'Buttermilk', 20.0)
  ];
  while (true) 
  {
    print("Press 1. Add Customer");
    print("Press 2. Add Product to Cart");
    print("Press 3. Generate Bill");
    print("Press 4. Search Customer");
    print("Press 5. Exit");

    String choice = stdin.readLineSync()!;

    switch (choice) 
    {
      case '1':
        print('Enter Customer Id:');
        int id = int.parse(stdin.readLineSync()!);
        print('Enter Customer Name:');
        String name = stdin.readLineSync()!;
        print('Enter Customer Contact:');
        String contact = stdin.readLineSync()!;
        customers.add(Customer(id, name, contact));
        break;

      case '2':
        print('Enter Customer Id:');
        int custId = int.parse(stdin.readLineSync()!);
        Customer? customer = findCustomerById(customers, custId);
        if (customer == null) 
        {
          print('Customer not found.');
        } else 
        {
          print('Available Products:');
          products.forEach((product) 
          {
            print('${product.prod_id}. ${product.prod_name} - \$${product.prod_price}');
          });
          print('Enter Product ID:');
          int prodId = int.parse(stdin.readLineSync()!);
          print('Enter Quantity:');
          int qty = int.parse(stdin.readLineSync()!);
          Product? product = findProductById(products, prodId);
          if (product == null) 
          {
            print('Product not found.');
          } else 
          {
            customer.addProductToCart(product, qty);
          }
        }
        break;

      case '3':
        print('Enter Customer ID:');
        int custId = int.parse(stdin.readLineSync()!);
        Customer? customer = findCustomerById(customers, custId);
        if (customer == null) {
          print('Customer not found.');
        } else {
          print('Customer: ${customer.cust_name}');
          print('Contact: ${customer.cust_contact}');
          print('Cart:');
          customer.cart.forEach((item) 
          {
            print('${item['pro_name']} - ${item['pro_qty']} x \$${item['pro_price'] / item['pro_qty']} = \$${item['pro_price']}');
          });
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.calculateDiscountedTotal();
          print('Total: \$${total}');
          print('Discount: \$${discount}');
          print('Amount to Pay: \$${discountedTotal}');
        }
        break;

      case '4':
        print('Enter Customer ID:');
        int custId = int.parse(stdin.readLineSync()!);
        Customer? customer = findCustomerById(customers, custId);
        if (customer == null) {
          print('Customer not found.');
        } else {
          print('Customer ID: ${customer.cust_id}');
          print('Customer Name: ${customer.cust_name}');
          print('Customer Contact: ${customer.cust_contact}');
          print('Cart:');
          customer.cart.forEach((item) {
            print('${item['pro_name']} - ${item['pro_qty']} x \$${item['pro_price'] / item['pro_qty']} = \$${item['pro_price']}');
          });
          double total = customer.calculateTotal();
          double discount = customer.calculateDiscount();
          double discountedTotal = customer.calculateDiscountedTotal();
          print('Total: \$${total}');
          print('Discount: \$${discount}');
          print('Amount to Pay: \$${discountedTotal}');
        }
        break;

      case '5':
        exit(0);
      default:
        print("Invalid choice.");
    }
  }
}
Customer? findCustomerById(List<Customer> customers, int id) 
{
  for (int i=0; i<customers.length;i++) 
  {
    if (customers[i].cust_id == id) {
      return customers[i];
    }
  }
  return null;
}

Product? findProductById(List<Product> products, int id)
 {
  for (int i=0;i<products.length;i++) 
  {
    if (products[i].prod_id == id)
    {
      return products[i];
    }
  }
  return null;
 }  

  