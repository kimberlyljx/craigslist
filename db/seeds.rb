
# require_relative '../app/models/category'

@category = Category.create(title: "Animal")
@category.posts.create(title: "Cat", desription: "The most majestic animal in the universe", price: "1 million million dollars", email: "cats@gmail.com", key: "CAT123456")
