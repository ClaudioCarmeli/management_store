# PRODUCT
Product.destroy_all
product1 = Product.create({:name=>"MUG", :price => 6})
product2 = Product.create({:name=>"TSHIRT", :price => 15})
product3 = Product.create({:name=>"HOODIE", :price => 20})

product1.save()
product2.save()
product3.save()

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"